package specification.expression
{
	import specification.core.Expression;
	import specification.core.RootExpression;

	public class Be extends Expression
	{
		public function Be(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function a(givenClass:Class):void
		{
			assert(
					expected is givenClass,
					"expected " + expected + " to be a" + givenClass,
					"expected " + expected + " not to be a" + givenClass
			);
		}

		public function an(givenClass:Class):void
		{
			assert(
					expected is givenClass,
					"expected " + expected + " to be an" + givenClass,
					"expected " + expected + " not to be an" + givenClass
			);
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
	}
}
