package specification.expression
{
	import flash.utils.getQualifiedClassName;

	import specification.core.Expression;
	import specification.core.ObjectUtil;
	import specification.core.RootExpression;

	public class Be extends Expression
	{
		public function Be(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function a(givenClass:*):void
		{
			assert(
					isInstanceOfClass(givenClass),
					"expected " + expected + " to be a" + givenClass,
					"expected " + expected + " not to be a" + givenClass
			);
		}

		public function an(givenClass:*):void
		{
			assert(
					isInstanceOfClass(givenClass),
					"expected " + expected + " to be an" + givenClass,
					"expected " + expected + " not to be an" + givenClass
			);
		}

		private function isInstanceOfClass(givenClass:*):Boolean
		{
			if (givenClass is String)
			{
				return getQualifiedClassName(expected) == givenClass;
			}
			return expected is givenClass;
		}

		public function ok():void
		{
			assert(
					expected,
					"expected " + expected + " to be truthy",
					"expected " + expected + " to be falsy"
			);
		}

		public function truthy():void
		{
			assert(
					expected == true,
					"expected " + expected + " to be truthy",
					"expected " + expected + " to be falsy"
			);
		}

		public function falsy():void
		{
			assert(
					expected == false,
					"expected " + expected + " to be falsy",
					"expected " + expected + " to be truthy"
			);
		}

		public function undef():void
		{
			assert(
					expected === undefined,
					"expected " + expected + " to be undefined",
					"expected " + expected + " not to be undefined"
			);
		}

		public function nill():void
		{
			assert(
					expected === null,
					"expected " + expected + " to be null",
					"expected " + expected + " not to be null"
			);
		}

		public function empty():void
		{
			assert(
					ObjectUtil.getLength(expected) == 0,
					"expected " + expected + " to be empty",
					"expected " + expected + " not to be empty"
			);
		}

		public function closeTo(value:Number, delta:Number):void
		{
			assert(
					Math.abs(expected - value) <= delta,
					"expected " + expected + " to be close to " + value + " +/- " + delta,
					"expected " + expected + " not to be close to " + value + " +/- " + delta
			);
		}

		public function between(from:Number, to:Number, strong:Boolean = false):void
		{
			assert(
					isBetween(from, to, strong),
					"expected " + expected + " to be between" + from + " and " + to,
					"expected " + expected + " not to be between" + from + " and " + to
			);
		}

		private function isBetween(from:Number, to:Number, strong:Boolean):Boolean
		{
			if (strong)
			{
				return from <= expected && expected <= to;
			}
			return from < expected && expected < to;
		}
	}
}
