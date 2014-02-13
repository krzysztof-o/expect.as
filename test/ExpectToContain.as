package
{
	import specification.expect;

	public class ExpectToContain
	{
		public function ExpectToContain()
		{
		}

		[Test]
		public function expectArrayToContain():void
		{
			expect([1, 2, 3]).to.contain(1);
		}

		[Test]
		public function expectArrayNotToContain():void
		{
			expect([1, 2, 3]).not.to.contain(4);
		}

		[Test(expects="Error")]
		public function expectArrayToContainNonExistingValue():void
		{
			expect([1, 2, 3]).to.contain(4);
		}
	}
}
