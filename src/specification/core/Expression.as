package specification.core
{
	public class Expression
	{
		protected var expressionRoot:RootExpression;

		public function Expression(expressionRoot:RootExpression)
		{
			this.expressionRoot = expressionRoot;
		}

		protected function get expected():*
		{
			return expressionRoot.expected;
		}

		protected function assert(value:Boolean, descriptionPositive:String, descriptionNegative:String):void
		{
			expressionRoot.assert(value, descriptionPositive, descriptionNegative);
		}

		protected function fail(description:String = ""):void
		{
			expressionRoot.fail(description);
		}

	}
}
