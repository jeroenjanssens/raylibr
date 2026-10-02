#version 100
precision highp float;

varying vec2 fragTexCoord;
varying vec4 fragColor;

uniform vec2 screenDims;
uniform vec2 c;
uniform vec2 offset;
uniform float zoom;

const int MAX_ITERATIONS = 255;

vec2 ComplexSquare(vec2 z)
{
    return vec2(
        z.x * z.x - z.y * z.y,
        z.x * z.y * 2.0
    );
}

vec3 Hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    vec2 z = vec2((fragTexCoord.x + offset.x/screenDims.x)*2.5/zoom, (fragTexCoord.y + offset.y/screenDims.y)*1.5/zoom);

    int iterations = 0;
    for (int i = 0; i < MAX_ITERATIONS; i++)
    {
        z = ComplexSquare(z) + c;
        if (dot(z, z) > 4.0) break;
        iterations = i;
    }

    z = ComplexSquare(z) + c;
    z = ComplexSquare(z) + c;

    float smoothVal = float(iterations) + 1.0 - (log(log(length(z)))/log(2.0));
    float norm = smoothVal/float(MAX_ITERATIONS);

    if (norm > 0.999) gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
    else gl_FragColor = vec4(Hsv2rgb(vec3(norm, 1.0, 1.0)), 1.0);
}
