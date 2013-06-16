package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Andrei Elvedi
	 */
	public class Main extends Sprite
	{
		public var splash_screen:Splash;
		public var play_screen:The_game_itself;
		public var game_over_screen:Game_over;
		public var how_to_play_screen:How_to_play;
		public var congratz_screen:Game_won;
		
		public function Main() 
		{
			show_splash();
			stage.focus = play_screen;
		}
		
		public function show_splash() 
		{
			splash_screen = new Splash(this);
			how_to_play_screen = remove_movie_clip(how_to_play_screen);
			game_over_screen = remove_movie_clip(game_over_screen);
			congratz_screen = remove_movie_clip(congratz_screen);
			addChild(splash_screen);
		}
		
		public function show_how_to_play() 
		{
			how_to_play_screen = new How_to_play(this);
			splash_screen = remove_movie_clip(splash_screen);
			addChild(how_to_play_screen);
		}
		
		public function show_game_over(level) 
		{
			game_over_screen = new Game_over(this);
			play_screen = remove_movie_clip(play_screen);	
			addChild(game_over_screen);
		}
		public function show_congratz() 
		{
			congratz_screen = new Game_won(this);
			play_screen = remove_movie_clip(play_screen);
			addChild(congratz_screen);
		}
		
		public function play_the_game()
		{
			play_screen = new The_game_itself(this);
			game_over_screen = remove_movie_clip(game_over_screen);
			congratz_screen = remove_movie_clip(congratz_screen);
			addChild(play_screen);
		}
		
		private function remove_movie_clip(clip:*) 
		{
			if (clip) {
				removeChild(clip);
			}
			return null;
		}
	}
}