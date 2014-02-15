package
{
	import specification.expect;

	public class ExpectToDeeplyCompare
	{
		public function ExpectToDeeplyCompare()
		{
		}

		[Test]
		public function expectObjectToDeeplyEqualObject():void
		{
			expect({a: 10, b: 20, c: {d: 30, e: [1, 2, 3]}}).to.deeply.equal({a: 10, b: 20, c: {d: 30, e: [1, 2, 3]}});
		}

		[Test]
		public function expectObjectNotToDeeplyEqualObject():void
		{
			expect({a: 10, b: 20, c: {d: 30, e: [1, 2, 3]}}).not.to.deeply.equal({a: 10, b: 20, c: {d: 30, e: [1, 2]}});
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectedObjectToDeeplyAnotherObject():void
		{
			expect({a: 10, b: 20, c: {d: 30, e: [1, 2, 3]}}).to.deeply.equal({a: 20, b: 20, c: {d: 30, e: [1, 2, 3]}});
		}
	}
}
