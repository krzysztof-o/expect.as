package specification.core
{
    public class AbstractExpression
    {
        protected var expressionRoot:ExpressionRoot;

        public function AbstractExpression(expressionRoot:ExpressionRoot)
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

        protected function pass(description:String = ""):void
        {
            expressionRoot.pass(description);
        }
    }
}
