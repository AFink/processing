// Player Object
class Player extends GameObject {
  
  private Texture t;
  private int cooldown;
  
  Player(int x, int y) {
    super(x,y);
    this.pos2.x = 50;
    this.pos2.y = 50;
    t = new Texture("mario.png");
    cooldown = 0;
  }
  
  // Prevent Player from leaving the screen
  void checkBound() {
    if (pos.x > width-120) {
     pos.x = width-120;
     future_pos.x = pos.x;
    }
    if (pos.x < 0) {
     pos.x = 0; 
     future_pos.x = pos.x;
    }
  }
  
  // Shoot Projectile
  void shoot(Sequence s) {
    if (cooldown == 0) {
   s.addObject(new Laser(pos.x+64, pos.y));
   cooldown = 20;
    }
  }
  
  @ Override void draw(Camera cam) {
    this.movement();
    this.checkBound();
    if (cooldown != 0) { cooldown--; }
   PVector real = this.resolvePosition(cam);
   t.draw(real.x, real.y);
  }
  
}
