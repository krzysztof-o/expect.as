package
{
	import specification.expect;

	public class ExpectToBeCloseTo
	{
		public function ExpectToBeCloseTo()
		{
		}

		[Test]
		public function expectToBeCloseTo():void
		{
			expect(2).to.be.closeTo(1.5, .5);
		}

		[Test]
		public function expectNotToBeCloseTo():void
		{
			expect(2).not.to.be.closeTo(1.5, .4);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeCloseToError():void
		{
			expect(2).to.be.closeTo(1.5, .4);
		}
	}
}
