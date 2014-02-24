package
{
	import specification.expect;

	public class ExpectToBeBetween
	{
		public function ExpectToBeBetween()
		{
		}

		[Test]
		public function expectToBeBetween():void
		{
			expect(10).to.be.between(9, 11);
		}

		[Test]
		public function expectNotToBeBetween():void
		{
			expect(11).not.to.be.between(9, 11);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeBetweenError():void
		{
			expect(12).to.be.between(9, 11);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeBetweenNotStrongError():void
		{
			expect(11).to.be.between(9, 11);
		}

		[Test]
		public function expectToBeBetweenStrong():void
		{
			expect(11).to.be.between(9, 11, true);
		}

		[Test]
		public function expectNotToBeBetweenStrong():void
		{
			expect(12).not.to.be.between(9, 11);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectToBeBetweenErrorStrong():void
		{
			expect(12).to.be.between(9, 11);
		}
	}
}
