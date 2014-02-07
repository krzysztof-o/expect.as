package expect.expression
{
    import expect.core.AbstractExpression;
    import expect.core.ExpressionRoot;

    public class Not extends AbstractExpression
    {
        public function Not(expressionRoot:ExpressionRoot)
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
