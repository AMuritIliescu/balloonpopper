package {
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Andrei Elvedi
	 */
	public class How_to_play extends Sprite 
	{	
		public var main_class:Main;
		
		public function How_to_play(passed_class:Main) 
		{
			main_class = passed_class;
			play_button.addEventListener(MouseEvent.CLICK, on_play_button_clicked);
			back_button.addEventListener(MouseEvent.CLICK, on_back_button_clicked);
		}
		
		public function on_play_button_clicked(event:MouseEvent) 
		{
			main_class.play_the_game();
		}
		
		public function on_back_button_clicked(event:MouseEvent) 
		{
			main_class.show_splash();
		}
	}
}