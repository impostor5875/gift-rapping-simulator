package shaders;

import flixel.system.FlxAssets.FlxShader;

class ShimmerShader extends FlxShader
{
	@:glFragmentShader('
        #pragma header

        void main() {
            gl_FragColor = new vec4(0.5,0.5,0.5,0.5);
        }
    ')
	public function new()
	{
		super();
	}
}
