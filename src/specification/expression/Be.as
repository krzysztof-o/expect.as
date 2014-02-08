package specification.expression
{
    import specification.core.AbstractExpression;
    import specification.core.ExpressionRoot;

    public class Be extends AbstractExpression
    {
        public function Be(expressionRoot:ExpressionRoot)
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
                    expected == true,
                    "expected " + expected + " to be truthy",
                    "expected " + expected + " to be falsy"
            );
        }
    }
}