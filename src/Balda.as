package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import modules.config.ConfigSet1;
	import modules.display.Field;
	
	
	/**
	 * @author - last_wallker
	 * @version - 1.0
	 * 
	 * @langversion - ActionScript 3.0
	 * @playerversion - FlashPlayer 11.4
	 */
	
	public class Balda extends Sprite
	{
		//--------------------------------------------------------------------------
		//
		//  Constants and Variables
		//
		//--------------------------------------------------------------------------
		
		//	Constants
		
		//	Private & protected variables
		
		//	Public variables
		
		//	Constructor
		
		public function Balda()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStageHandler);
		}		
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Events handlers
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		
		protected function onAddedToStageHandler(e:Event):void
		{
			var mcField : Field = new Field(ConfigSet1.WIDTH,ConfigSet1.HEIGHT,ConfigSet1.WORD);
				mcField.x = stage.stageWidth - mcField.width >> 1;
				mcField.y = stage.stageHeight - mcField.height >> 1;
			
			addChild(mcField);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Logs
		//
		//--------------------------------------------------------------------------
	}
}
