package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class Game_won extends Sprite 
	{	
		public var main_class:Main;
		
		public function Game_won(passed_class:Main) 
		{
			main_class = passed_class;
		}
		
		public function on_main_menu_button_clicked(event:MouseEvent) 
		{
			main_class.show_splash();
		}
	}
}