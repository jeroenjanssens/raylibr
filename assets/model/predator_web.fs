#version 100
precision highp float;
varying vec2 fragTexCoord;
varying vec4 fragColor;
uniform sampler2D texture0;
uniform vec4 colDiffuse;

void main()
{
    vec3 texelColor = texture2D(texture0, fragTexCoord).rgb;

    float lum = (texelColor.r + texelColor.g + texelColor.b)/3.0;

    vec3 tc;
    if (lum < 0.5) {
        tc = mix(vec3(0.0, 0.0, 1.0), vec3(1.0, 1.0, 0.0), lum / 0.5);
    } else {
        tc = mix(vec3(1.0, 1.0, 0.0), vec3(1.0, 0.0, 0.0), (lum - 0.5) / 0.5);
    }

    gl_FragColor = vec4(tc, 1.0);
}
