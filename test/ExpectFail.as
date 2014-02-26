package
{
	import specification.expect;

	public class ExpectFail
	{
		public function ExpectFail()
		{
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectFail():void
		{
			expect().fail();
		}
	}
}
