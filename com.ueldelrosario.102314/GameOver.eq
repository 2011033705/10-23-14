
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite gover;
	
	int w;
	int h;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

		rsc.prepare_image("GAMEOVER", "gameover",w,h);
		gover = add_sprite_for_image(SEImage.for_resource("GAMEOVER"));
		gover.move(0,0);
	}


	public void cleanup() {
		base.cleanup();
	}
}
