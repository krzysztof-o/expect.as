package
{
	import specification.expect;

	public class ExpectToBeFalsy
	{
		public function ExpectToBeFalsy()
		{
		}

		[Test]
		public function expectFalseToBeFalsy():void
		{
			expect(false).to.be.falsy();
		}

		[Test]
		public function expectZeroToBeFlasy():void
		{
			expect(0).to.be.falsy();
		}

		[Test]
		public function expectTrueNotToBeFalsy():void
		{
			expect(true).not.to.be.falsy();
		}

		[Test]
		public function expectOneNotToBeFalsy():void
		{
			expect(1).not.to.be.falsy();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectTrueToBeFalsy():void
		{
			expect(true).to.be.falsy();
		}
	}
}
