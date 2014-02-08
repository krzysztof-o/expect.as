package specification
{
    import specification.core.ExpressionRoot;

    public function expect(expected:*):ExpressionRoot
    {
        return new ExpressionRoot(expected);
    }
}
