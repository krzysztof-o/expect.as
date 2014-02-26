package specification
{
	import specification.expression.Expect;

	public function expect(expected:* = null):Expect
	{
		return new Expect(expected);
	}
}
