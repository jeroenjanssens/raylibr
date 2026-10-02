#version 100
precision highp float;
varying vec2 fragTexCoord;
varying vec4 fragColor;
uniform sampler2D texture0;
uniform vec4 colDiffuse;

const float renderWidth = 800.0;
const float renderHeight = 450.0;

void main()
{
    float offset0 = 0.0;
    float offset1 = 1.3846153846;
    float offset2 = 3.2307692308;
    float weight0 = 0.2270270270;
    float weight1 = 0.3162162162;
    float weight2 = 0.0702702703;

    vec3 texelColor = texture2D(texture0, fragTexCoord).rgb*weight0;

    texelColor += texture2D(texture0, fragTexCoord + vec2(offset1)/renderWidth, 0.0).rgb*weight1;
    texelColor += texture2D(texture0, fragTexCoord - vec2(offset1)/renderWidth, 0.0).rgb*weight1;
    texelColor += texture2D(texture0, fragTexCoord + vec2(offset2)/renderWidth, 0.0).rgb*weight2;
    texelColor += texture2D(texture0, fragTexCoord - vec2(offset2)/renderWidth, 0.0).rgb*weight2;

    gl_FragColor = vec4(texelColor, 1.0);
}
