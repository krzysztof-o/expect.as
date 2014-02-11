package specification.expression
{
	import specification.core.AbstractExpression;
	import specification.core.ExpressionRoot;

	public class Strict extends AbstractExpression
	{
		public function Strict(expressionRoot:ExpressionRoot)
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
