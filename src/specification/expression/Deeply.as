package specification.expression
{
	import mx.utils.ObjectUtil;

	import specification.core.Expression;

	import specification.core.RootExpression;

	public class Deeply extends Expression
	{
		public function Deeply(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function equal(given:*):void
		{
			assert(
					ObjectUtil.compare(expected, given) == 0,
					"expected " + expected + " to deeply equal " + given,
					"expected " + expected + " not to deeply equal " + given
			);
		}
	}
}
