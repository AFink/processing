
class OVAL
{

  private int xPos;     // Deklaration des Datentyps der Attribute
  private int yPos;
  private int dx;
  private int dy;

  ELLIPSE()    // Konstruktor
  {
    xPos = 100;
    yPos = 200;
    dx = 30;
    dy = 30;
  }
  
  
  void Zeichne()
  {
    ellipse(xPos, yPos, dx, dy);
  }
  
  
}

