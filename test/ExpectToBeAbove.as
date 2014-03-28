package
{
	import specification.expect;

	public class ExpectToBeAbove
	{
		public function ExpectToBeAbove()
		{
		}

		[Test]
		public function expectToBeAbove():void
		{
			expect(6).to.be.above(5);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeAboveFailEqualValues():void
		{
			expect(5).to.be.above(5);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeAboveFail():void
		{
			expect(4).to.be.above(5);
		}
	}
}
