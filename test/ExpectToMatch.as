package
{
	import specification.expect;

	public class ExpectToMatch
	{
		public function ExpectToMatch()
		{
		}

		[Test]
		public function expectStringToMatchRegexp():void
		{
			expect("foo@bar.com").to.match(/[a-z0=9.]+@[a-z0=9.]+.[a-z]{2,4}/);
		}

		[Test]
		public function expectStringNotToMatchRegexp():void
		{
			expect("foo@@bar.com").not.to.match(/[a-z0-9.]+@[a-z0-9.]+.[a-z]{2,4}/);
		}

		[Test(expects="Error")]
		public function expectIncorrectStringToMatchRegexp():void
		{
			expect("foo@@bar.com").to.match(/[a-z0-9.]+@[a-z0-9.]+.[a-z]{2,4}/);
		}
	}
}
