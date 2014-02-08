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
expect([1, 2, 3]).to.be.a(Number);
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

**have length**: asserts that array has length of given value
```actionscript
expect([1, 2, 3]).to.have.length(3);
expect([1, 2, 3]).not.to.have.length(0);
```

**dispatch**: asserts that the event dispatcher dispatches given event type
```actionscript
expect(dispatcher).to.dispatch(Event.CHANGE);
expect(dispatcher).not.to.dispatch(CustomEvent.CUSTOM_TYPE);
```

### TODO
- ```expect({a: 1, b: 2}).to.have.length(2);```
- ```expect({a: 1, b: 2}).to.contain("a");```
- ```expect(function(){}).to.raise(Error);```
- ```expect(starlingDispatcher).to.dispatch(CustomStarlingEvent.CUSTOM_TYPE);```
- ```expect(100).not.to.strictly.equal("100");```
- ```expect({a: 1, b: {c: 2}).to.deep.equal({a: 1, b: {c: 2}});```
- ```expect("my@email.com").to.match(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}/);```

### Features / Goals
- BDD-style
- Make use of IDE's code completion
- Lightweight
- Easy to use
- Easy to extend
- Compatible with FlexUnit

### Inspirations
- [chai.js](https://github.com/chaijs/chai)
- [expect.js](https://github.com/LearnBoost/expect.js/)
