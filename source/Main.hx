package;

import flixel.FlxGame;
import gamestates.PlayState;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	inline public static var fpsCounter:Int = #if html5 60 #else 120 #end;

	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, PlayState, 1, fpsCounter, fpsCounter, true, false));
		addChild(new FPS(10, 10, 0xFFFFFFFF));

		trace('he approves');
	}
}
