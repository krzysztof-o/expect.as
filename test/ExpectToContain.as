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

		[Test]
		public function expectStringToContain():void
		{
			expect("one two three").to.contain("two");
		}

		[Test]
		public function expectStringNotToContain():void
		{
			expect("one two three").not.to.contain("four");
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectArrayToContainNonExistingValue():void
		{
			expect([1, 2, 3]).to.contain(4);
		}
	}
}
