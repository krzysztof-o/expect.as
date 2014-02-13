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
			expect(dispatcher).to.dispatch("testEvent").inFlexUnitTest(this);
			setTimeout(function ():void
			{
				dispatcher.dispatchEvent(new Event("testEvent"));
			}, 100);
		}

		[Test(async, expects="Error")]
		public function expectDispatcherToDispatchButDidNot():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).to.dispatch("testEvent").inFlexUnitTest(this);
		}

		[Test(async, expects="Error")]
		public function expectDispatcherNotToDispatchButDispatched():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).not.to.dispatch("testEvent").inFlexUnitTest(this);
			setTimeout(function ():void
			{
				dispatcher.dispatchEvent(new Event("testEvent"));
			}, 100);
		}

		[Test(async)]
		public function expectDispatcherNotToDispatchButDidNot():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).not.to.dispatch("testEvent").inFlexUnitTest(this);
		}
	}
}
