package specification.expression
{
    import specification.core.AbstractExpression;
    import specification.core.ExpressionRoot;
    import specification.flexunit.FlexUnitAsync;

    import flash.events.Event;
    import flash.events.IEventDispatcher;
    import flash.utils.clearTimeout;
    import flash.utils.setTimeout;

    public class Dispatch extends AbstractExpression
    {
        private var delay:Number;
        private var timeout:Number;
        private var eventType:String;
        private var dispatcher:IEventDispatcher;
        private var flexUnitAsync:FlexUnitAsync;

        public function Dispatch(expressionRoot:ExpressionRoot, dispatcher:IEventDispatcher, eventType:String)
        {
            super(expressionRoot);
            this.dispatcher = dispatcher;
            this.eventType = eventType;

            init();
        }

        private function init():void
        {
            flexUnitAsync = new FlexUnitAsync();
            dispatcher.addEventListener(eventType, onEvent);
            before(1000);
        }


        public function before(ms:Number):void
        {
            clearTimeout(timeout);
            delay = ms;
            timeout = setTimeout(onTimeout, delay);
        }

        private function onTimeout():void
        {
            if (expressionRoot.negation)
            {
                flexUnitAsync.pass();
                pass("expected event type " + eventType + " has not been dispatched");
            }
            else
            {
                flexUnitAsync.fail();
                fail("expected event type " + eventType + " has not been dispatched");
            }
            dispose();
        }

        private function dispose():void
        {
            dispatcher.removeEventListener(eventType, onEvent);
            clearTimeout(timeout);
        }

        private function onEvent(event:Event):void
        {
            if (expressionRoot.negation)
            {
                flexUnitAsync.fail();
                fail("expected event type " + eventType + " has been dispatched");
            }
            else
            {
                flexUnitAsync.pass();
                pass("expected event type " + eventType + " has been dispatched");
            }
            dispose();

        }

        public function inFlexUnitTest(testCase:Object):void
        {
            flexUnitAsync.init(testCase, delay);
        }
    }
}
