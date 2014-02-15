package
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;

	import specification.expect;

	public class ExpectToContainDisplayObject
	{
		private var container:DisplayObjectContainer;
		private var child:DisplayObject;

		public function ExpectToContainDisplayObject()
		{
		}

		[Before]
		public function setUp():void
		{
			container = new Sprite();
			child = new Sprite();

		}
		[After]
		public function tearDown():void
		{
			container = null;
			child = null;
		}

		[Test]
		public function expectContainerToContainChild():void
		{
			container.addChild(child);
			expect(container).to.contain(child);
		}

		[Test]
		public function expectContainerNotToContainChild():void
		{
			expect(container).not.to.contain(child);
		}

		[Test(expects="specification.core.ExpectationError")]
		public function expectContainerNotToContainIncorrectChild():void
		{
			expect(container).to.contain(child);
		}
	}
}
