package specification.core
{
	public class RootExpression
	{
		private var _expected:*;
		private var _negation:Boolean;

		public function RootExpression(expected:*)
		{
			_expected = expected;
			_negation = false;
		}

		public function get expected():*
		{
			return _expected;
		}

		public function get negation():Boolean
		{
			return _negation;
		}

		public function set negation(value:Boolean):void
		{
			_negation = value;
		}

		public function assert(value:Boolean, descriptionPositive:String, descriptionNegative:String):void
		{
			var description:String = getDescription(descriptionPositive, descriptionNegative);
			if(!checkValue(value))
			{
				fail(description);
			}
		}

		public function fail(description:String):void
		{
			throw new Error(description);
		}

		private function checkValue(value:Boolean):Boolean
		{
			if(negation) return !value;
			return value;
		}

		private function getDescription(descriptionPositive:String = "", descriptionNegative:String = ""):String
		{
			return negation ? descriptionNegative : descriptionPositive;
		}
	}
}
