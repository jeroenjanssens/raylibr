#version 100
precision highp float;
varying vec2 fragTexCoord;
varying vec4 fragColor;
uniform sampler2D texture0;
uniform vec4 colDiffuse;

float gamma = 0.6;
float numColors = 8.0;

void main()
{
    vec3 texelColor = texture2D(texture0, fragTexCoord.xy).rgb;

    texelColor = pow(texelColor, vec3(gamma, gamma, gamma));
    texelColor = texelColor*numColors;
    texelColor = floor(texelColor);
    texelColor = texelColor/numColors;
    texelColor = pow(texelColor, vec3(1.0/gamma));

    gl_FragColor = vec4(texelColor, 1.0);
}
