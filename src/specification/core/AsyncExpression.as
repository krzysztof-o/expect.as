package specification.core
{
	import flash.events.Event;
	import flash.events.EventDispatcher;

	import org.flexunit.async.Async;

	public class AsyncExpression extends Expression
	{
		public static const ASYNC_PASS:String = "ASYNC_PASS";
		public static const ASYNC_FAIL:String = "ASYNC_FAIL";

		protected var dispatcher:EventDispatcher;
		protected var delay:Number;

		public function AsyncExpression(expressionRoot:RootExpression)
		{
			super(expressionRoot);
		}

		public function async(testCase:Object):void
		{
			dispatcher = new EventDispatcher();
			Async.proceedOnEvent(testCase, dispatcher, ASYNC_PASS, delay + 100);
			Async.failOnEvent(testCase, dispatcher, ASYNC_FAIL, delay + 100);
		}

		override protected function fail(description:String = ""):void
		{
			dispatcher.dispatchEvent(new Event(ASYNC_FAIL));
		}

		public function pass():void
		{
			dispatcher.dispatchEvent(new Event(ASYNC_PASS));
		}
	}
}
