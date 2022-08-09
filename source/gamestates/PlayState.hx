package gamestates;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import shaders.ShimmerShader;

class PlayState extends FlxState
{
	public var uncleFred:FlxSprite;

	override public function create()
	{
		super.create();

		uncleFred = new FlxSprite().loadGraphic(Paths.png('uncle fred'));
		uncleFred.screenCenter();
		add(uncleFred);

		uncleFred.shader = new ShimmerShader();
	}

	public function addFredAlpha(alphaAddition:Float)
	{
		var newAlpha:Float = uncleFred.alpha + alphaAddition;
		if (newAlpha > 1)
			newAlpha = 1;
		else if (newAlpha < 0)
			newAlpha = 0;
		uncleFred.alpha = newAlpha;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		var kp = FlxG.keys.pressed;
		var kjp = FlxG.keys.justPressed;
		var controls:Array<Bool> = [kp.UP, kp.DOWN, kjp.ENTER];

		for (i in 0...controls.length)
			if (controls[i])
				switch (i)
				{
					case 0:
						addFredAlpha(elapsed);
					case 1:
						addFredAlpha(-elapsed);
					case 2:
						trace(uncleFred.alpha);
				}
	}
}
