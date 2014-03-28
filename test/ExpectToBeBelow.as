package
{
	import specification.expect;

	public class ExpectToBeBelow
	{
		public function ExpectToBeBelow()
		{
		}

		[Test]
		public function expectToBeBelow():void
		{
			expect(4).to.be.below(5);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeBelowFailEqualValues():void
		{
			expect(5).to.be.below(5);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeBelowFail():void
		{
			expect(6).to.be.below(5);
		}
	}
}
