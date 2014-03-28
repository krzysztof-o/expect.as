package
{
	import specification.expect;

	public class ExpectToBeAtMost
	{
		public function ExpectToBeAtMost()
		{
		}

		[Test]
		public function expectToBeAtMost():void
		{
			expect(4).to.be.at.most(5);
		}

		public function expectToBeAtMostEqualValues():void
		{
			expect(5).to.be.at.most(5);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeAtMostFail():void
		{
			expect(6).to.be.at.most(5);
		}
	}
}
