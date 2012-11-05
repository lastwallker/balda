package modules.display
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	
	/**
	 * @author - last_wallker
	 * @version - 1.0
	 * 
	 * @langversion - ActionScript 3.0
	 * @playerversion - FlashPlayer 11.4
	 */
	
	public class Field extends Sprite
	{
		//--------------------------------------------------------------------------
		//
		//  Constants and Variables
		//
		//--------------------------------------------------------------------------
		
		//	Constants
		
		//	Private & protected variables
		
		private var _uWidth		: uint;
		private var _uHeight	: uint;
		private var _strWord	: String;
		
		private var _vecCeils	: Vector.<Vector.<Ceil>>	= new Vector.<Vector.<Ceil>>();
		
		//	Public variables
		
		//	Constructor
		
		public function Field(width:uint, height:uint, word:String)
		{
			_uWidth 	= width;
			_uHeight	= height;
			_strWord	= word;
			
			init();			
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
		
		private function init():void
		{
			var i : uint = 0;
			var j : uint = 0;
			
			for( i = 0; i < _uWidth; i++)
			{
				var vecTempCeils : Vector.<Ceil> = new Vector.<Ceil>();
				
				for( j = 0; j < _uHeight; j++)
				{					
					var mcCeil	: Ceil = new Ceil();
						mcCeil.x = mcCeil.width * i;
						mcCeil.y = mcCeil.height * j;
					addChild(mcCeil);
					
					vecTempCeils.push(mcCeil);
				}
				
				_vecCeils.push(vecTempCeils);
			}
			
			for( i = 0; i < _uWidth; i++)
			{
				 j = uint( _uHeight / 2);
				
				_vecCeils[i][j].text = _strWord.charAt(i);
			}
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
