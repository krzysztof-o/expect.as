package specification.core
{
	public class ObjectUtil
	{
		public static function getLength(object:*):uint
		{
			if (object is Array || object is String)
			{
				return object.length;
			}
			return getLengthOfObject(object);
		}

		private static function getLengthOfObject(object:Object):uint
		{
			var length:uint = 0;
			for each(var key:String in object)
			{
				length++;
			}
			return length;
		}
	}
}
