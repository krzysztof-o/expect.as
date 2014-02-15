package
{
	import specification.expect;

	public class ExpectToBeUndef
	{
		public function ExpectToBeUndef()
		{
		}

		[Test]
		public function expectUndefinedToBeUndef():void
		{
			expect(undefined).to.be.undef();
		}

		[Test]
		public function expectOneToBeUndef():void
		{
			expect(1).not.to.be.undef();
		}

		[Test]
		public function expectNullNotToBeUndef():void
		{
			expect(null).not.to.be.undef();
		}

		[Test]
		public function expectZeroNotToBeUndef():void
		{
			expect(0).not.to.be.undef();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectStringToBeUndef():void
		{
			expect("test").to.be.undef();
		}
	}
}
