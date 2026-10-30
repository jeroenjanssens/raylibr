#version 100
precision highp float;
varying vec2 fragTexCoord;
varying vec4 fragColor;
uniform sampler2D texture0;
uniform vec4 colDiffuse;

const float renderWidth = 800.0;
const float renderHeight = 450.0;
float offset = 0.0;

uniform float time;

void main()
{
    float frequency = renderHeight/3.0;

    float globalPos = (fragTexCoord.y + offset) * frequency;
    float wavePos = cos((fract(globalPos) - 0.5)*3.14);

    vec4 texelColor = texture2D(texture0, fragTexCoord);

    gl_FragColor = mix(vec4(0.0, 0.3, 0.0, 0.0), texelColor, wavePos);
}
