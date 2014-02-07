package
{
    import expect.expect;

    import flash.events.Event;
    import flash.events.EventDispatcher;
    import flash.utils.setTimeout;

    public class AllTests
    {
        [Test]
        public function expectTrueToBeOk():void
        {
            expect(true).to.be.ok();
        }

        [Test]
        public function expectFalseNotToBeTrue():void
        {
            expect(false).not.to.be.ok();
        }

        [Test(expects="Error")]
        public function expectFalseToBeOk():void
        {
            expect(false).to.be.ok();
        }

        [Init]
        public function expectTrueToEqualTrue():void
        {
            expect(true).to.equal(true);
        }

        [Init]
        public function expectTrueNotToEqualFalse():void
        {
            expect(true).to.equal(false);
        }

        [Test]
        public function expectStringToEqualAnotherString():void
        {
            expect("test").to.equal("test");
        }

        [Test]
        public function expectStringNotToEqualAnotherString():void
        {
            expect("test").not.to.equal("failed test");
        }

        [Test(expects="Error")]
        public function expectStringNotToEqualNumber():void
        {
            expect("test").to.equal(123);
        }

        [Test(expects="Error")]
        public function expectNumberToBeAString():void
        {
            expect(1).to.be.a(String);
        }

        [Test]
        public function expectNumberToBeANumber():void
        {
            expect(1).to.be.a(Number);
        }

        [Test]
        public function expectArrayToBeAnArray():void
        {
            expect([1, 2, 3]).to.be.an(Array);
        }

        [Test]
        public function expectArrayNotToBeANumber():void
        {
            expect([1, 2, 3]).not.to.be.a(Number);
        }

        [Test]
        public function expectNumberNotToBeAnArray():void
        {
            expect(1).not.to.be.an(Array);
        }

        [Test(expects="Error")]
        public function expectStringToBeAnArray():void
        {
            expect("test").to.be.an(Array);
        }

        [Test]
        public function expectArrayToContain():void
        {
            expect([1, 2, 3]).to.contain(1);
        }

        [Test]
        public function expectArrayNotToContain():void
        {
            expect([1, 2, 3]).not.to.contain(4);
        }

        [Test(expects="Error")]
        public function expectArrayToContainNonExistingValue():void
        {
            expect([1, 2, 3]).to.contain(4);
        }

        [Test]
        public function expectObjectToHaveProperty():void
        {
            expect({a: "test"}).to.have.property("a");
        }

        [Test]
        public function expectObjectNotToHaveProperty():void
        {
            expect({a: "test"}).not.to.have.property("b");
        }

        [Test(expects="Error")]
        public function expectObjectToHaveNonExistingProperty():void
        {
            expect({a: "test"}).to.have.property("b");
        }

        [Test]
        public function expectArrayToHaveLength():void
        {
            expect([1, 2, 3]).to.have.length(3);
        }

        [Test]
        public function expectArrayNotToHaveLength():void
        {
            expect([1, 2, 3]).not.to.have.length(2);
        }

        [Test]
        public function expectArrayNoToHaveLength():void
        {
            expect([1, 2, 3]).not.to.have.length(2);
        }

        [Test(expects="Error")]
        public function expectArrayToHaveIncorrectLength():void
        {
            expect([1, 2, 3]).to.have.length(4);
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
