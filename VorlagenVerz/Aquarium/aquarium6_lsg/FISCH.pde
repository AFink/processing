

class FISCH
{
  protected float x;
  protected float y;
  protected float v;
  protected PImage bild_fisch;
  
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
  
  void ZeichneFisch()
  {
    image(bild_fisch,x,y);  
  }
  
  void Bewege(float zeit)
  {
    x = x + zeit*v;
  }
  
}
    
