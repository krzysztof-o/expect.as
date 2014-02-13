package
{
	import specification.expect;

	public class ExpectToBeA
	{
		public function ExpectToBeA()
		{
		}

		[Test]
		public function expectNumberToBeANumber():void
		{
			expect(1).to.be.a(Number);
		}

		[Test]
		public function expectArrayToBeAnArray():void
		{
			expect([1, 2, 3]).to.be.an(Array);
		}

		[Test(expects="Error")]
		public function expectNumberToBeAString():void
		{
			expect(1).to.be.a(String);
		}

		[Test]
		public function expectArrayNotToBeANumber():void
		{
			expect([1, 2, 3]).not.to.be.a(Number);
		}

		[Test]
		public function expectNumberNotToBeAnArray():void
		{
			expect(1).not.to.be.an(Array);
		}

		[Test(expects="Error")]
		public function expectStringToBeAnArray():void
		{
			expect("test").to.be.an(Array);
		}

	}
}
