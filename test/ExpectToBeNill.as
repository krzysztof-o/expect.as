package
{
	import specification.expect;

	public class ExpectToBeNill
	{
		public function ExpectToBeNill()
		{
		}

		[Test]
		public function expectNullToBeNill():void
		{
			expect(null).to.be.nill();
		}

		[Test]
		public function expectOneToBeNill():void
		{
			expect(1).not.to.be.nill();
		}

		[Test]
		public function expectNullNotToBeNill():void
		{
			expect(undefined).not.to.be.nill();
		}

		[Test]
		public function expectZeroNotToBeNill():void
		{
			expect(0).not.to.be.nill();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectStringToBeNill():void
		{
			expect("test").to.be.nill();
		}
	}
}
