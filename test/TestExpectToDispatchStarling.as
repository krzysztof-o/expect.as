package
{
	import flash.utils.setTimeout;

	import specification.expect;

	import starling.events.EventDispatcher;

	public class TestExpectToDispatchStarling
	{
		public function TestExpectToDispatchStarling()
		{
		}

		[Test(async)]
		public function expectDispatcherToDispatch():void
		{
			var dispatcher:EventDispatcher = new EventDispatcher();
			expect(dispatcher).to.dispatch("testEvent").inFlexUnitTest(this);
			setTimeout(function ():void
			{
				dispatcher.dispatchEventWith("testEvent");
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
				dispatcher.dispatchEventWith("testEvent");
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
