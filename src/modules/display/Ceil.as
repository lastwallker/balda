package modules.display
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	
	/**
	 * @author - last_wallker
	 * @version - 1.0
	 * 
	 * @langversion - ActionScript 3.0
	 * @playerversion - FlashPlayer 11.4
	 */
	
	public class Ceil extends MovieClip
	{
		//--------------------------------------------------------------------------
		//
		//  Constants and Variables
		//
		//--------------------------------------------------------------------------
		
		//	Constants
		
		//	Private & protected variables
		
		private var _mcActiveArea 	: MovieClip;
		private var _tfChar			: TextField;
		
		//	Public variables
		
		//	Constructor
		
		public function Ceil()
		{
			_mcActiveArea 	= getChildByName("mcActiveArea")	as MovieClip;
			_tfChar			= getChildByName("tfChar")			as TextField;
			
			init();
		}		
		
		//--------------------------------------------------------------------------
		//
		//  Getters&setters
		//
		//--------------------------------------------------------------------------
		
		public function get text():String
		{
			return _tfChar.text;
		}
		
		public function set text(value:String):void
		{
			_tfChar.text = value;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Events handlers
		//
		//--------------------------------------------------------------------------
		
		protected function mouseOverHandler(e:Event):void
		{
			const LABEL_OVER : String = "over_complete";
			
			gotoAndStop(LABEL_OVER);
		}
		
		protected function mouseOutHandler(e:Event):void
		{
			const LABEL_OUT : String = "out_complete";
			
			gotoAndStop(LABEL_OUT)
		}
		
		protected function mouseClickHandler(e:Event):void
		{
			const LABEL_DOWN : String = "down_complete";
			
			gotoAndStop(LABEL_DOWN)
		}
		
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		
		private function init():void
		{
			addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler)
			addEventListener(MouseEvent.MOUSE_OUT, 	mouseOutHandler)
			addEventListener(MouseEvent.CLICK, 		mouseClickHandler)
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
