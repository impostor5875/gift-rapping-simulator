package;

class Paths
{
	inline public static function asset(file:String, fileExt:String)
	{
		return 'assets/$file.${fileExt.toLowerCase()}';
	}

	inline public static function png(file:String)
	{
		return asset('images/$file', 'png');
	}
}
