package
{
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;

	import specification.expect;

	import starling.display.Sprite;

	public class ExpectToContainStarlingDisplayObject
	{
		private var container:DisplayObjectContainer;
		private var child:DisplayObject;

		public function ExpectToContainStarlingDisplayObject()
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
