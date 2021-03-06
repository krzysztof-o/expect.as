expect.as
=========

BDD-style assertion library for Action Script 3

![expect.as syntax](http://i.imgur.com/jxi6cj7.gif)

## API
**ok**: asserts that the value is _truthy_ or not
```actionscript
expect(true).to.be.ok();
expect(false).not.to.be.ok();
expect("everything").to.be.ok();
expect(null).not.to.be.ok();
expect(undefined).not.to.be.ok();
```

**truthy**: asserts that the value equals true
```actionscript
expect(true).to.be.truthy();
expect(0).not.to.be.truthy();
```

**false**: asserts that the value equals false
```actionscript
expect(false).to.be.falsy();
expect(1).not.to.be.falsy();
```

**undef**: asserts that the value is undefined
```actionscript
expect(undefined).to.be.undef();
expect(100).not.to.be.undef();
```

**nill**: asserts that the value is null
```actionscript
expect(undefined).to.be.nill();
expect(100).not.to.be.nill();
```

**exist**: asserts that the value is not null or undefined
```actionscript
expect(null).not.to.exist();
expect(undefined).not.to.exist();
expect(100).to.exist();
```

**empty**: asserts that the value is empty
```actionscript
expect([]).to.be.empty();
expect({}).to.be.empty();
expect("").to.be.empty();
```

**equal**: asserts that the values are equal (```==```)
```actionscript
expect(123).to.equal(123);
expect("test").not.to.equal(123);
```

**be a / be an**: asserts that the value is instance of given class
```actionscript
expect(123).to.be.a(Number);
expect("test").not.to.be.an(Array);
expect(sprite).to.be.a("flash.display::Sprite");
```

**contain**: asserts that the array contains value
```actionscript
expect([1, 2, 3]).to.contain(2);
expect("one two three").not.to.contain("four");
expect(sprite).to.contain(anotherSprite);
expect(starlingSprite).not.to.contain(anotherStarlingSprite);
```

**have property**: asserts that the value has own property
```actionscript
expect({name: "Bruce Wayne"}).to.have.property("name");
expect({name: "Bruce Wayne"}).not.to.have.property("age");
```

**have length**: asserts that array has length of given array or object
```actionscript
expect([1, 2, 3]).to.have.length(3);
expect([1, 2, 3]).not.to.have.length(0);
expect({a: 10, b: 20, c: 30}).to.have.length(3);
expect("test").to.have.length(4);
```

**dispatch**: asserts that the event dispatcher dispatches given event type (works also with Starling EventDispatcher)
```actionscript
expect(dispatcher).to.dispatch(Event.CHANGE);
expect(starlingDispatcher).to.dispatch(EnterFrameEvent.ENTER_FRAME);
expect(dispatcher).not.to.dispatch(CustomEvent.CUSTOM_TYPE);
```

**strictly equal**: asserts that the values are strictly equal (```===```)
```actionscript
expect(123).to.strictly.equal(123);
expect("123").not.to.strictly.equal(123);
```

**deeply equal**: asserts that the values are deeply equal
```actionscript
expect({a: 1, b: {c: "test", d: [1, 2, 3]}).to.deeply.equal({a: 1, b: {c: "test", d: [1, 2, 3]});
```

**match**: asserts that the value matches given regular expression
```actionscript
expect("foo@bar.com").to.match(/[a-z0-9.]+@[a-z0-9.]+.[a-z]{2,4}/);
```

**raise**: asserts that the value matches given regular expression
```actionscript
expect(someFunction).to.raise();
expect(someOtherFunction).not.to.raise(ArgumentError);
expect(yetAnotherFunction).not.to.raise(Error, /[a-zA-Z]/);
expect(yetAnotherFunction).to.raise(Error, "Unexpected error");
```

**closeTo**: asserts that the expected is equal given value, to within a +/- `delta` range
```actionscript
expect(2).to.be.closeTo(1.5, .5);
```

**between**: asserts that the value is between given numbers
```actionscript
expect(2).to.be.between(1, 3);
expect(2).to.be.between(1, 2, true); //3rd parameter means strong inequality
```

**above**: asserts that expected value is greater then given value
```actionscript
expect(10).to.be.above(5)
```

**below**: asserts that expected value is lower then given value
```actionscript
expect(5).to.be.below(10)
```

**at least**: asserts that expected value is greater or equal to given value
```actionscript
expect(10).to.be.at.least(5);
expect(5).to.be.at.least(5);
```

**at most**: asserts that expected value is lower or equal to given value
```actionscript
expect(5).to.be.at.most(10);
expect(10).to.be.at.most(10);
```

**fail**: throws ExpectationError
```actionscript
expect().fail();
expect().fail("It did not meet expectations");
```

### TODO
- Got an idea for new *expression*? Don't hesitate to create an issue or send pull request.

### Features / Goals
- BDD-style
- Make use of IDE's code completion
- Compatible with FlexUnit

### Inspirations
- [chai.js](https://github.com/chaijs/chai)
- [expect.js](https://github.com/LearnBoost/expect.js/)
