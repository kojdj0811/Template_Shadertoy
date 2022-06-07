#iChannel0 "file://BufferB.glsl"

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 uv = fragCoord.xy / iResolution.xy;
    vec4 col = vec4(texture(iChannel0, uv));
	fragColor = col;
}