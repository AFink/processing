
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

  void Zeichne()
  {
    ellipse(xPos, yPos, radius, radius);
  }
}

