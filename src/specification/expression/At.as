package specification.expression
{
	import specification.core.Expression;
	import specification.core.ObjectUtil;
	import specification.core.RootExpression;

	public class At extends Expression
	{
		public function At(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function least(value:Number):void
		{
			assert(
					expected >= value,
					"expected " + expected + " to be at least " + value,
					"expected " + expected + " not to be at least " + value
			);
		}
	}
}
