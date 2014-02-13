package specification.expression
{
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;

	import specification.core.AsyncExpression;
	import specification.core.RootExpression;

	public class Dispatch extends AsyncExpression
	{
		private var timeout:Number;
		private var eventType:String;

		public function Dispatch(expressionRoot:RootExpression, eventType:String)
		{
			super(expressionRoot);
			this.eventType = eventType;

			init();
		}

		public function before(ms:Number):void
		{
			clearTimeout(timeout);
			delay = ms;
			timeout = setTimeout(onTimeout, delay);
		}

		private function init():void
		{
			expected.addEventListener(eventType, onEvent);
			before(1000);
		}

		private function onTimeout():void
		{
			if(expressionRoot.negation)
			{
				pass();
			}
			else
			{
				fail();
			}
			dispose();
		}

		private function dispose():void
		{
			expected.removeEventListener(eventType, onEvent);
			clearTimeout(timeout);
		}

		private function onEvent(event:*):void
		{
			if(expressionRoot.negation)
			{
				fail();
			}
			else
			{
				pass();
			}
			dispose();
		}
	}
}
