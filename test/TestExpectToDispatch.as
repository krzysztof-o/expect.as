package
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.setTimeout;

	import specification.expect;

	public class TestExpectToDispatch
	{
		public function TestExpectToDispatch()
		{
		}

		[Test(async)]
		public function expectDispatcherToDispatch():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).to.dispatch("testEvent").async(this);
			setTimeout(function ():void
			{
				dispatcher.dispatchEvent(new Event("testEvent"));
			}, 100);
		}

		[Test(async, expects="specification.core.ExpectationError")]
		public function expectDispatcherToDispatchButDidNot():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).to.dispatch("testEvent").async(this);
		}

		[Test(async, expects="specification.core.ExpectationError")]
		public function expectDispatcherNotToDispatchButDispatched():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).not.to.dispatch("testEvent").async(this);
			setTimeout(function ():void
			{
				dispatcher.dispatchEvent(new Event("testEvent"));
			}, 100);
		}

		[Test(async)]
		public function expectDispatcherNotToDispatchButDidNot():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).not.to.dispatch("testEvent").async(this);
		}
	}
}
