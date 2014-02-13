package specification.expression
{
	import specification.core.Expression;
	import specification.core.RootExpression;

	public class Strictly extends Expression
	{
		public function Strictly(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function equal(given:*):void
		{
			assert(
					expected === given,
					"expected " + expected + " to strict equal " + given,
					"expected " + expected + " not to strict equal " + given
			);
		}
	}
}
