package
{
	import specification.expect;

	public class ExpectToEqual
	{
		public function ExpectToEqual()
		{
		}

		[Test]
		public function expectTrueToEqualTrue():void
		{
			expect(true).to.equal(true);
		}

		[Test]
		public function expectTrueNotToEqualFalse():void
		{
			expect(true).not.to.equal(false);
		}

		[Test]
		public function expectStringToEqualAnotherString():void
		{
			expect("test").to.equal("test");
		}

		[Test]
		public function expectStringNotToEqualAnotherString():void
		{
			expect("test").not.to.equal("failed test");
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectStringNotToEqualNumber():void
		{
			expect("test").to.equal(123);
		}

		[Test]
		public function expectStringToEqualNumber():void
		{
			expect(100).to.equal("100");
		}
	}
}
