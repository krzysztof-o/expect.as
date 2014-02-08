package specification.flexunit
{
    import flash.events.Event;
    import flash.events.EventDispatcher;

    import org.flexunit.async.Async;

    public class FlexUnitAsync
    {
        private const ASYNC_PASS:String = "FLEX_UNIT_ASYNC_PASS";
        private const ASYNC_FAIL:String = "FLEX_UNIT_ASYNC_FAIL";

        private var dispatcher:EventDispatcher;

        public function FlexUnitAsync()
        {
        }

        public function init(testCase:Object, timeout:Number):void
        {
            dispatcher = new EventDispatcher();
            Async.proceedOnEvent(testCase, dispatcher, ASYNC_PASS, timeout + 100);
            Async.failOnEvent(testCase, dispatcher, ASYNC_FAIL, timeout + 100);
        }

        public function pass():void
        {
            dispatcher.dispatchEvent(new Event(ASYNC_PASS));
        }

        public function fail():void
        {
            dispatcher.dispatchEvent(new Event(ASYNC_FAIL));
        }
    }
}
