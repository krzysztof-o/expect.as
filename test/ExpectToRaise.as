package
{
	import specification.expect;

	public class ExpectToRaise
	{
		public function ExpectToRaise()
		{
		}

		[Test]
		public function expectFunctionToRaiseError():void
		{
			expect(raiseError).to.raise(Error);
		}

		[Test]
		public function expectFunctionNotToRaiseError():void
		{
			expect(emptyFunction).not.to.raise(Error);
		}

		[Test]
		public function expectFunctionToRaiseArgumentError():void
		{
			expect(raiseArgumentError).to.raise(ArgumentError);
		}

		[Test]
		public function expectFunctionToRaiseErrorCorrectType():void
		{
			expect(raiseArgumentError).to.raise(Error);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectFunctionToRaiseArgumentErrorIncorrectType():void
		{
			expect(raiseError).to.raise(ArgumentError);
		}

		[Test]
		public function expectFunctionToRaiseErrorWithMessageRegExp():void
		{
			expect(raiseError).to.raise(Error, /[a-zA-Z]/);
		}

		[Test]
		public function expectFunctionNotToRaiseErrorWithMessageRegExp():void
		{
			expect(emptyFunction).not.to.raise(Error, /[a-zA-Z]/);
		}

		[Test]
		public function expectFunctionToRaiseArgumentErrorWithMessageRegExp():void
		{
			expect(raiseArgumentError).to.raise(ArgumentError, /[a-zA-Z]/);
		}

		[Test]
		public function expectFunctionToRaiseErrorCorrectTypeWithMessageRegExp():void
		{
			expect(raiseArgumentError).to.raise(Error, /[a-zA-Z]/);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectFunctionToRaiseArgumentErrorIncorrectTypeWithMessageRegExp():void
		{
			expect(raiseError).to.raise(ArgumentError, /[a-zA-Z]/);
		}

		[Test]
		public function expectFunctionToRaiseErrorWithMessage():void
		{
			expect(raiseError).to.raise(Error, "testError");
		}

		[Test]
		public function expectFunctionNotToRaiseErrorWithMessage():void
		{
			expect(emptyFunction).not.to.raise(Error, "testError");
		}

		[Test]
		public function expectFunctionToRaiseArgumentErrorWithMessage():void
		{
			expect(raiseArgumentError).to.raise(ArgumentError, "testArgumentError");
		}

		[Test]
		public function expectFunctionToRaiseErrorCorrectTypeWithMessage():void
		{
			expect(raiseArgumentError).to.raise(Error, "testArgumentError");
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectFunctionToRaiseArgumentErrorIncorrectTypeWithMessage():void
		{
			expect(raiseError).to.raise(ArgumentError, "testArgumentError");
		}

		private static function raiseError():void
		{
			throw new Error("testError");
		}

		private static function raiseArgumentError():void
		{
			throw new ArgumentError("testArgumentError");
		}

		private static function emptyFunction():void
		{
		}
	}
}
