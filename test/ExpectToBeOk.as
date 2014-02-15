package
{
	import specification.expect;

	public class ExpectToBeOk
	{
		public function ExpectToBeOk()
		{
		}

		[Test]
		public function expectTrueToBeOk():void
		{
			expect(true).to.be.ok();
		}

		[Test]
		public function expectFalseNotToBeTrue():void
		{
			expect(false).not.to.be.ok();
		}

		[Test]
		public function expectStringToBeOk():void
		{
			expect("everything").to.be.ok();
		}

		[Test]
		public function expectNumberToBeOk():void
		{
			expect(1).to.be.ok();
		}

		[Test]
		public function expectUndefinedToBeNotOk():void
		{
			expect(undefined).not.to.be.ok();
		}

		[Test]
		public function expectNullToBeNotOk():void
		{
			expect(null).not.to.be.ok();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectFalseToBeOk():void
		{
			expect(false).to.be.ok();
		}
	}
}
