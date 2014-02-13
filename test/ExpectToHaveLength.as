package
{
	import specification.expect;

	public class ExpectToHaveLength
	{
		public function ExpectToHaveLength()
		{
		}

		[Test]
		public function expectArrayToHaveLength():void
		{
			expect([1, 2, 3]).to.have.length(3);
		}

		[Test]
		public function expectArrayNotToHaveLength():void
		{
			expect([1, 2, 3]).not.to.have.length(2);
		}

		[Test]
		public function expectArrayNoToHaveLength():void
		{
			expect([1, 2, 3]).not.to.have.length(2);
		}

		[Test(expects="Error")]
		public function expectArrayToHaveIncorrectLength():void
		{
			expect([1, 2, 3]).to.have.length(4);
		}
	}
}
