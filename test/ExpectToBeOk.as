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

		[Test(expects="Error")]
		public function expectFalseToBeOk():void
		{
			expect(false).to.be.ok();
		}
	}
}
