
class ZITRONE extends FISCH
{
  
  ZITRONE ()
     {
       super();
        bild_fisch = loadImage("fischgelbR.png");  
     }
  
  
     ZITRONE (float xNeu, float yNeu)
     {
       super(xNeu,yNeu);
       v = 0.5;
        bild_fisch = loadImage("fischgelbR.png");  
     }
     
     
     
     
     
       void Bewege(float zeit)
  {
    if(x < width - 75/*breite des Bilds */){
    
    x = x + zeit*v;
    }
  }
  
  
}
