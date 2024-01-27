varying highp vec2 var_texcoord0;
varying lowp vec4 var_color;

uniform lowp sampler2D texture_sampler;
uniform lowp vec4 tint;

void main()
{
    // vec3 color = vec3(0.776470588, 0.607843137, 0.784313725);
    vec3 color = vec3(0., 0., 0.);
    lowp float tint_a =  texture2D(texture_sampler, var_texcoord0.xy).a * 0.8;

    // need for non-black color
    // if (tint_a == 0) discard;

    gl_FragColor = vec4(color, tint_a);
}
