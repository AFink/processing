// Camera Object for Translating Coordinates
class Camera {
  private PVector pos;
  
  Camera(int x, int y) {
   pos = new PVector(x,y); 
  }
  
  // Update Position
  void update(int x, int y) {
    pos.x = lerp(pos.x, pos.x + x, 0.5);
    pos.y = lerp(pos.y, pos.y + y, 0.5);
  }
  
}
