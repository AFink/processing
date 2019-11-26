// Most Basic GameObject
class GameObject {
  
  private PVector pos;
  private PVector size;
  private PVector future_pos;
  
  GameObject(float x, float y) {
    pos = new PVector(x,y);
    size = new PVector(50, 50);
    future_pos = new PVector(x,y);
  }
  
  // Camera Position Resolving
  PVector resolvePosition(Camera cam) {
    float realx = pos.x-(cam.pos.x/this.paralax);
    float realy = pos.y-(cam.pos.y/this.paralax);
    return new PVector(realx, realy);
  }
  
  // Collision Detection
  boolean collide(GameObject b) {
    if (
    this.pos.x < b.pos.x + b.pos2.x &&
    this.pos.x + this.pos2.x > b.pos.x &&
    this.pos.y < b.pos.y + b.pos2.y &&
    this.pos2.y + this.pos.y > b.pos.y) {
      return true;
    } else {
      return false;
    }
  }
 
 // Update Position
  void update(float x, float y) {
    future_pos.x = pos.x+x;
    future_pos.y = pos.y+y;
  }
  
  // Smooth Movement Updates
  void movement() {
    println("RAW: [" + this.getClass().getName() + "] [" + pos.x + ", " + pos.y + ", " + size.x + ", " + size.y + "]");
    pos.x = lerp(pos.x, future_pos.x, 0.05);
    pos.y = lerp(pos.y, future_pos.y, 0.05); 
  }
  
  // Draw the object
  void draw(Camera cam) {
   this.movement();
   PVector real = this.resolvePosition(cam);
   fill(255,0,0);
   ellipse(real.x, real.y, pos2.x, pos2.y); 
  }

  PVector getSize() { return size; }
  void setSize(float x, float y) { size = new PVector(x, y); }
  
}
