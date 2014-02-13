package specification.expression
{
	import specification.core.Expression;
	import specification.core.RootExpression;

	public class Strict extends Expression
	{
		public function Strict(expressionRoot:RootExpression)
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
