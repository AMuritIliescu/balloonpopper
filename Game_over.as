package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class Game_over extends Sprite 
	{
		public var main_class:Main;
		
		public function Game_over(passed_class:Main) 
		{
			main_class = passed_class;
			play_again_button.addEventListener(MouseEvent.CLICK, play_again_button_clicked);
			main_menu_button.addEventListener(MouseEvent.CLICK, on_main_menu_button_clicked);
		}
		
		public function play_again_button_clicked(event:MouseEvent) 
		{
			main_class.play_the_game();
		}
		
		public function on_main_menu_button_clicked(event:MouseEvent) 
		{
			main_class.show_splash();
		}
	}
}