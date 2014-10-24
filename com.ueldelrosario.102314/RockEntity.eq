
/*
 * RockEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class RockEntity: SEEntity
{
	SESprite monster;
	int w;
	int h;
	public static int mx;
	public static int my;
	int p_x;
	int p_y;

	public void initialize(SEResourceCache rsc)
	 {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("mymonster","red",w*0.11);
		monster = add_sprite_for_image(SEImage.for_resource("mymonster"));
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(Math.random(0,w),Math.random(0,h));
		
	}


	public void tick(TimeVal now, double delta) 
	{
		base.tick(now,delta);
		p_x = MainScene.x;
		p_y = MainScene.y;
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(mx+(p_x-mx)/Math.random(50,150),my+(p_y-my)/Math.random(50,150));
	}

	public void cleanup() {
		base.cleanup();
	}
}