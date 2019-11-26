// Background Object
class Background extends GameObject {
  
  private Texture t;
  
  Background(int x, int y) {
    super(x,y);
    t = new Texture("bg.png");
  }
  
  @ Override void draw(Camera cam) {
   PVector real = this.resolvePosition(cam);
   t.draw(real.x, real.y);
  }
  
}

// Laser Projectile
class Laser extends GameObject {
  
  private int extend = 0;
 
  Laser(float x, float y) {
   super(x,y);
   this.pos2.x = 5;
   this.pos2.y = 5;
  }
  
  @ Override void draw(Camera cam) {
    this.update(0,-200);
    this.movement();
    if (extend < 60) { extend += 10; }
   PVector real = this.resolvePosition(cam);
    line(real.x, real.y, real.x, real.y+extend);
    strokeWeight(5);
  }
  
}

// Basic Shuttle Enemy
class Shuttle extends GameObject {
 
  Shuttle(float x, float y) {
   super(x,y);
   this.pos2.x = 100;
   this.pos2.y = 100;
  }
  
  @ Override void draw(Camera cam) {
    this.update(0,100);
    this.movement();
   PVector real = this.resolvePosition(cam);
    rect(real.x, real.y, 100,100);
  }
  
}

// Hydra

class DatAdam extends GameObject {
  
  private Texture tex;
 
  DatAdam(float x, float y) {
   super(x,y,1);
   this.pos2.x = 5;
   this.pos2.y = 5;
   tex = new Texture("datadam.png");
  }
  
  @ Override void draw(Camera cam) {
    this.update(-2,1);
    this.movement();
   PVector real = this.resolvePosition(cam);
    tex.draw(real.x,real.y);
  }
  
}
