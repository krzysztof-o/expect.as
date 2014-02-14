expect.as
=========

 BDD-style assertion library for Action Script 3

![expect.as syntax](http://i.imgur.com/jxi6cj7.gif)

## API
**ok**: asserts that the value is _truthy_ or not
```actionscript
expect(true).to.be.ok();
expect(false).not.to.be.ok();
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
```

**contain**: asserts that the array contains value
```actionscript
expect([1, 2, 3]).to.contain(1);
expect([1, 2, 3]).not.to.contain(4);
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

**match**: asserts that the value matches given regular expression
```actionscript
expect("foo@bar.com").to.match(/[a-z0-9.]+@[a-z0-9.]+.[a-z]{2,4}/);
expect("incorrect@email@address.com").not.to.match(/[a-z0-9.]+@[a-z0-9.]+.[a-z]{2,4}/);
```

**raise**: asserts that the value matches given regular expression
```actionscript
expect(someFunction).to.raise();
expect(someOtherFunction).not.to.raise(ArgumentError);
expect(yetAnotherFunction).not.to.raise(Error, /[a-zA-Z]/);
expect(yetAnotherFunction).to.raise(Error, "Unexpected error");
```


### TODO
- ```expect({a: 1, b: {c: 2}).to.deep.equal({a: 1, b: {c: 2}});```
- ```expect(sptire).to.contain(anotherSprite);```

### Features / Goals
- BDD-style
- Make use of IDE's code completion
- Compatible with FlexUnit

### Inspirations
- [chai.js](https://github.com/chaijs/chai)
- [expect.js](https://github.com/LearnBoost/expect.js/)
