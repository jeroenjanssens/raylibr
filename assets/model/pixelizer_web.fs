#version 100
precision highp float;
varying vec2 fragTexCoord;
varying vec4 fragColor;
uniform sampler2D texture0;
uniform vec4 colDiffuse;

const float renderWidth = 800.0;
const float renderHeight = 450.0;

uniform float pixelWidth;
uniform float pixelHeight;

void main()
{
    float pw = pixelWidth > 0.0 ? pixelWidth : 5.0;
    float ph = pixelHeight > 0.0 ? pixelHeight : 5.0;
    float dx = pw*(1.0/renderWidth);
    float dy = ph*(1.0/renderHeight);

    vec2 coord = vec2(dx*floor(fragTexCoord.x/dx), dy*floor(fragTexCoord.y/dy));

    vec3 tc = texture2D(texture0, coord).rgb;

    gl_FragColor = vec4(tc, 1.0);
}
