package expect.expression
{
    import expect.core.AbstractExpression;
    import expect.core.ExpressionRoot;

    public class Have extends AbstractExpression
    {
        public function Have(expressionRoot:ExpressionRoot)
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
            var actualLength:Number = expected.length;
            assert(
                    actualLength == length,
                    "expected " + expected + " to have a length of " + length + ", but got " + actualLength,
                    "expected " + expected + " not to have a length of " + length
            );
        }
    }
}
