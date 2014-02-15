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

		[Test(expects="specification.core.ExpectationError")]
		public function expectArrayToHaveIncorrectLength():void
		{
			expect([1, 2, 3]).to.have.length(4);
		}

		[Test]
		public function expectArrayToHaveZeroLength():void
		{
			expect([]).to.have.length(0);
		}

		[Test]
		public function expectObjectToHaveLength():void
		{
			expect({a: 10, b: 20, c: 30}).to.have.length(3);
		}

		[Test]
		public function expectObjectNotToHaveLength():void
		{
			expect({a: 10, b: 20, c: 30}).not.to.have.length(2);
		}

		[Test]
		public function expectObjectToHaveZeroLength():void
		{
			expect({}).to.have.length(0);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectObjectToHaveIncorrectLength():void
		{
			expect({a: 10, b: 20, c: 30}).to.have.length(4);
		}
	}
}
