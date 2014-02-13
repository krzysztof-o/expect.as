package specification
{
	import specification.expression.Expect;

	public function expect(expected:*):Expect
	{
		return new Expect(expected);
	}
}
