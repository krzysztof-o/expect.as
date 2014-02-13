package
{
	import specification.expect;

	public class ExpectToHaveProperty
	{
		public function ExpectToHaveProperty()
		{
		}

		[Test]
		public function expectObjectToHaveProperty():void
		{
			expect({a: "test"}).to.have.property("a");
		}

		[Test]
		public function expectObjectNotToHaveProperty():void
		{
			expect({a: "test"}).not.to.have.property("b");
		}

		[Test(expects="Error")]
		public function expectObjectToHaveNonExistingProperty():void
		{
			expect({a: "test"}).to.have.property("b");
		}
	}
}
