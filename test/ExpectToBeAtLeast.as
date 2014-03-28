package
{
	import specification.expect;

	public class ExpectToBeAtLeast
	{
		public function ExpectToBeAtLeast()
		{
		}

		[Test]
		public function expectToBeAtLeast():void
		{
			expect(6).to.be.at.least(5);
		}

		public function expectToBeAtLeastEqualValues():void
		{
			expect(5).to.be.at.least(5);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeAtLeastFail():void
		{
			expect(4).to.be.at.least(5);
		}
	}
}
