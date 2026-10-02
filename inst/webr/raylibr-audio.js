// Audio proxy for raylibr webR demos.
// The webR worker cannot use AudioContext (Web Audio API is main-thread only).
// This proxy creates AudioContext on the main thread and reads PCM data from
// a SharedArrayBuffer ring buffer that the worker fills each frame.

export const audioProxy = {
    ctl: null,
    devices: {},

    handle(data) {
        if (!data || data.type !== '__raylibr_audio') return false;
        switch (data.action) {
            case 'init':
                this.ctl = new Int32Array(data.ctl);
                break;
            case 'dev_init':
                this.devInit(data);
                break;
            case 'dev_start':
                this.devStart(data.idx);
                break;
            case 'dev_stop':
                this.devStop(data.idx);
                break;
            case 'dev_uninit':
                this.devUninit(data.idx);
                break;
            case 'unlock':
                this.unlock();
                break;
            case 'uninit':
                this.uninitAll();
                break;
        }
        return true;
    },

    devInit(msg) {
        var opts = {};
        if (msg.sr) opts.sampleRate = msg.sr;
        var ctx;
        try {
            ctx = new AudioContext(opts);
        } catch (e) {
            if (this.ctl) {
                Atomics.store(this.ctl, 0, 2);
                Atomics.notify(this.ctl, 0);
            }
            return;
        }

        var hdr = new Int32Array(msg.pcm, 0, 4);
        var ring = hdr[2];
        var ch = hdr[3];
        var pcmData = new Float32Array(msg.pcm, 16);

        var node = ctx.createScriptProcessor(msg.bs, 0, ch);
        node.onaudioprocess = function(e) {
            var wp = Atomics.load(hdr, 0);
            var rp = Atomics.load(hdr, 1);
            var avail = (wp - rp + ring) % ring;
            var frames = e.outputBuffer.length;

            if (avail < frames) {
                for (var c = 0; c < e.outputBuffer.numberOfChannels; c++)
                    e.outputBuffer.getChannelData(c).fill(0);
                return;
            }

            for (var c = 0; c < e.outputBuffer.numberOfChannels; c++) {
                var out = e.outputBuffer.getChannelData(c);
                for (var f = 0; f < frames; f++) {
                    out[f] = pcmData[((rp + f) % ring) * ch + c];
                }
            }
            Atomics.store(hdr, 1, (rp + frames) % ring);
        };
        node.connect(ctx.destination);

        this.devices[msg.idx] = { ctx: ctx, node: node };

        if (this.ctl) {
            this.ctl[1] = ctx.sampleRate;
            Atomics.store(this.ctl, 0, 1);
            Atomics.notify(this.ctl, 0);
        }
    },

    devStart(idx) {
        var d = this.devices[idx];
        if (d && d.ctx) d.ctx.resume();
    },

    devStop(idx) {
        var d = this.devices[idx];
        if (d && d.ctx) d.ctx.suspend();
    },

    devUninit(idx) {
        var d = this.devices[idx];
        if (d) {
            if (d.node) d.node.disconnect();
            if (d.ctx) d.ctx.close();
            delete this.devices[idx];
        }
    },

    unlock() {
        for (var idx in this.devices) {
            var d = this.devices[idx];
            if (d && d.ctx && d.ctx.state === 'suspended') {
                d.ctx.resume();
            }
        }
    },

    uninitAll() {
        for (var idx in this.devices) this.devUninit(idx);
    }
};
