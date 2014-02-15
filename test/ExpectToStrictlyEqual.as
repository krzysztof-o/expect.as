package
{
	import specification.expect;

	public class ExpectToStrictlyEqual
	{
		public function ExpectToStrictlyEqual()
		{
		}

		[Test]
		public function expectStringNotToStrictlyEqualNumber():void
		{
			expect(100).not.to.strictly.equal("100");
		}

		[Test]
		public function expectNumberToStrictlyEqualNumber():void
		{
			expect(100).to.strictly.equal(100);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectStringToStrictlyEqualNumber():void
		{
			expect(100).to.strictly.equal("100");
		}
	}
}
