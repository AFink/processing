
class ELLIPSE
{

  private int xPos;     // Deklaration des Datentyps der Attribute
  private int yPos;
  private int radiusx;
  private int radiusy;

  ELLIPSE()    // Konstruktor
  {
    xPos = 100;
    yPos = 200;
    radiusx = 30;
    radiusy = 30;
  }
  
  ELLIPSE(int xPosNeu, int yPosNeu)
  {
    xPos = xPosNeu;
    yPos = yPosNeu;
    radiusx = 80;  
  radiusy = 80;  
  }
  
  ELLIPSE(int xPosNeu, int yPosNeu, int radiusNeu)
  {
    xPos = xPosNeu;
    yPos = yPosNeu;
    radiusx = radiusNeu;   
   radiusy = radiusNeu; 
  }
  
  void Zeichne()
  {
    ellipse(xPos, yPos, 2*radiusx, 2*radiusy);
  }
  
  int GibxRadius()
  {
    return radiusx;
  }
  
  int GibyRadius()
  {
    return radiusy;
  }
  
  int GibxPos()
  {
    return xPos;
  }
  
  int GibyPos()
  {
    return yPos;
  }
}

