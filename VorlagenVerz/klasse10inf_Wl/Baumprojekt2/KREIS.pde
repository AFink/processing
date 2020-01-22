
class KREIS
{

  int xPos;     // Deklaration des Datentyps der Attribute
  int yPos;
  int radius;

  KREIS()    // Konstruktor
  {
    xPos = 100;
    yPos = 200;
    radius = 30;
  }
  
  KREIS(int xPosNeu, int yPosNeu)
  {
    xPos = xPosNeu;
    yPos = yPosNeu;
    radius = 80;    
  }
  
  KREIS(int xPosNeu, int yPosNeu, int radiusNeu)
  {
    xPos = xPosNeu;
    yPos = yPosNeu;
    radius = radiusNeu;    
  }
  

  void Zeichne()
  {
    ellipse(xPos, yPos, radius, radius);
  }
}

