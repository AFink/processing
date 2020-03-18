
class HERING extends FISCH
{
  
  HERING ()
     {
       super();
        bild_fisch = loadImage("hering.png");  
     }
  
  
     HERING (float xNeu, float yNeu)
     {
       super(xNeu,yNeu);
       v = 0.5;
        bild_fisch = loadImage("hering.png");  
     }
     
     
     
     
     
       void Bewege(float zeit)
  {
    x = x - zeit*v;
  }
  
  
}
