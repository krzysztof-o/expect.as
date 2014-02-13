package specification.expression
{
	import specification.core.RootExpression;

	public class Expect extends RootExpression
	{
		public function Expect(expected:*)
		{
			super(expected);
		}

		public function get to():To
		{
			return new To(this);
		}

		public function get not():Not
		{
			return new Not(this);
		}
	}
}
