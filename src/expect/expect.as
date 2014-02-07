package expect
{
    import expect.core.ExpressionRoot;

    public function expect(expected:*):ExpressionRoot
    {
        return new ExpressionRoot(expected);
    }
}
