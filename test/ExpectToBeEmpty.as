package
{
	import specification.expect;

	public class ExpectToBeEmpty
	{
		public function ExpectToBeEmpty()
		{
		}

		[Test]
		public function expectArrayToBeEmpty():void
		{
			expect([]).to.be.empty();
		}

		[Test]
		public function expectObjectToBeEmpty():void
		{
			expect({}).to.be.empty();
		}

		[Test]
		public function expectStringToBeEmpty():void
		{
			expect("").to.be.empty();
		}

		[Test]
		public function expectArrayNotToBeEmpty():void
		{
			expect([1,2,3]).not.to.be.empty();
		}

		[Test]
		public function expectObjectNotToBeEmpty():void
		{
			expect({a: 10, b: 20}).not.to.be.empty();
		}

		[Test]
		public function expectStringNotToBeEmpty():void
		{
			expect("test").not.to.be.empty();
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectStringToBeEmptyError():void
		{
			expect("test").to.be.empty();
		}
	}
}
