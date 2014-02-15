package
{
	import specification.expect;

	public class ExpectToBeTrue
	{
		public function ExpectToBeTrue()
		{
		}

		[Test]
		public function expectTrueToBeTruthy():void
		{
			expect(true).to.be.truthy();
		}

		[Test]
		public function expectOneToBeTruthy():void
		{
			expect(1).to.be.truthy();
		}

		[Test]
		public function expectFalseNotToBeTruthy():void
		{
			expect(false).not.to.be.truthy();
		}

		[Test]
		public function expectZeroNotToBeTruthy():void
		{
			expect(0).not.to.be.truthy();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectFalseToBeOk():void
		{
			expect(false).to.be.truthy();
		}
	}
}
