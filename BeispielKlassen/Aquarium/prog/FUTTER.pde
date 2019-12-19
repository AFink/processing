class FUTTER {

  float x;
  float y;
  int hoehe;
  int breite;
  
  FUTTER(float xneu, float yneu) {
    x = xneu;
    y = yneu;
    hoehe = 10;
    breite = 10;
  }
  
  void Bewege() {
   if (y < height-10) {
    y += y*0.001; 
    println(y);
   }
  }
  
  void Zeichne() {
   rect(x, y, breite, hoehe); 
  }
}
