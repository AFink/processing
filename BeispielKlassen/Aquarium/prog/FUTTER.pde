class FUTTER {

  float x;
  float y;
  FUTTER(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void Bewege() {
   if (y < height-10) {
    y += y*0.001; 
    println(y);
   }
  }
  
  void Zeichne() {
   rect(x, y, 10, 10); 
  }
}
