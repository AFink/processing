class FISCH
{
  float x, y;
  float v;
  PImage bild_fisch;

  FISCH(float xNeu, float yNeu)
  {
    x = xNeu;
    y = yNeu;
    v = 1;
    bild_fisch = loadImage("fisch.png");
  }


  FISCH()
  {
    x = 100;
    y = 400;
    v = 1;
    bild_fisch = loadImage("fisch.png");
  }
  
  float GibX(){
    return x;
  }

  void SetzeX(float xneu) {
    x = xneu;
  }

  void Bewege(float zeit){
    x = x + zeit*v;
  }


  void ZeichneFisch(){
    image(bild_fisch, x, y);
  }
}  
