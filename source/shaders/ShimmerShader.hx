package shaders;

import flixel.system.FlxAssets.FlxShader;

class ShimmerShader extends FlxShader
{
	@:glFragmentSource('
        #pragma header

        uniform float totalElapsed;
        float shaderIntensity = 0.15;
        float shaderSpeed = 1.15;
        float shaderWidth = 3.75;

        void main() {
            vec4 color = flixel_texture2D(bitmap, openfl_TextureCoordv);
            vec4 outputPixel = vec4(color.x, color.y, color.z, 1.0);

            float uncleFredPNG = openfl_TextureCoordv.y + (openfl_TextureCoordv.x/2.5);
            if (uncleFredPNG < mod(totalElapsed*shaderSpeed, shaderWidth) && uncleFredPNG > mod(totalElapsed*shaderSpeed, shaderWidth) - 0.25) {
                outputPixel.x += shaderIntensity;
                outputPixel.y += shaderIntensity;
                outputPixel.z += shaderIntensity;
            }

            gl_FragColor = outputPixel * color.a;
        }
    ')
	public function new()
	{
		super();
	}
}
