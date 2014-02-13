package specification.expression
{
	import specification.core.Expression;
	import specification.core.RootExpression;

	public class Not extends Expression
	{
		public function Not(expressionRoot:RootExpression)
		{
			super(expressionRoot);
			expressionRoot.negation = true;
		}

		public function get to():To
		{
			return new To(expressionRoot);
		}
	}
}
