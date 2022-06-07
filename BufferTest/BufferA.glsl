#iChannel0 "file://BufferB.glsl"

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 r = fragCoord.xy - iMouse.xy;
    float d = 0.001*dot(r,r);
    if(iMouse.z > 0.0 && d < 0.05) {
    	fragColor = vec4(0.2, 0.2, 0.2, 0.0);
        return;
    } 
    
    vec2 uv = fragCoord.xy / iResolution.xy;
   	fragColor = texture(iChannel0, uv);
}