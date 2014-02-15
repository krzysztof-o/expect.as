package specification.expression
{
	import specification.core.Expression;
	import specification.core.RootExpression;

	public class To extends Expression
	{
		public function To(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function get be():Be
		{
			return new Be(expressionRoot);
		}

		public function get strictly():Strictly
		{
			return new Strictly(expressionRoot);
		}

		public function get deeply():Deeply
		{
			return new Deeply(expressionRoot);
		}

		public function get have():Have
		{
			return new Have(expressionRoot);
		}

		public function equal(given:*):void
		{
			assert(
					expected == given,
					"expected " + expected + " to equal " + given,
					"expected " + expected + " not to equal " + given
			);
		}

		public function contain(element:*):void
		{
			assert(
					expected.indexOf(element) >= 0,
					"expected " + expected + " contain " + element,
					"expected " + expected + " not to contain " + element
			);
		}

		public function dispatch(eventType:String):Dispatch
		{
			return new Dispatch(expressionRoot, eventType);
		}

		public function match(regExp:RegExp):void
		{
			assert(
					regExp.exec(expected),
					"expected " + expected + " to match " + regExp,
					"expected " + expected + " not to match " + regExp
			);
		}

		public function raise(errorType:Class = null, message:* = null):void
		{
			errorType ||= Error;

			var raisedError:Boolean = false;
			try
			{
				expected.apply();
			}
			catch(error:Error)
			{
				raisedError = error is errorType && compareMessages(error.message, message);
			}

			assert(
					raisedError,
					"expected to raise error " + errorType,
					"expected not to raise error " + errorType
			);
		}

		private function compareMessages(errorMessage:String, message:*):Boolean
		{
			if(!message) return true;
			if(message is String && errorMessage == message) return true;
			if(message is RegExp && message.exec(errorMessage)) return true;

			return false;
		}
	}
}
