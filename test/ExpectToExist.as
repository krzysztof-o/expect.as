package
{
	import specification.expect;

	public class ExpectToExist
	{
		public function ExpectToExist()
		{
		}

		[Test]
		public function expectNullNotToExist():void
		{
			expect(null).not.to.exist();
		}

		[Test]
		public function expectUndefinedNotToExist():void
		{
			expect(undefined).not.to.exist();
		}

		[Test]
		public function expectOneToExist():void
		{
			expect(1).to.exist();
		}

		[Test]
		public function expectTrueToExist():void
		{
			expect(true).to.exist();
		}

		[Test]
		public function expectFalseToExist():void
		{
			expect(false).to.exist();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectNullToExist():void
		{
			expect(null).to.exist();
		}
	}
}
