package specification.expression
{
	import specification.core.Expression;
	import specification.core.ObjectUtil;
	import specification.core.RootExpression;

	public class Have extends Expression
	{
		public function Have(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function property(property:String):void
		{
			assert(
					expected.hasOwnProperty(property),
					"expected " + expected + " to have property " + property,
					"expected " + expected + " not to have property " + property
			);
		}

		public function length(length:uint):void
		{
			var actualLength:Number = ObjectUtil.getLength(expected);
			assert(
					actualLength == length,
					"expected " + expected + " to have a length of " + length + ", but got " + actualLength,
					"expected " + expected + " not to have a length of " + length
			);
		}
	}
}
