class KREIS
{
  String farbe;
  int xPos;
  int yPos;
  int radius;
  
  KREIS()
  {
    farbe= "rot";
    xPos = 100;
    yPos = 100;
    radius = 20;
  }
  
  void Zeichne()
  {
    fill(250,10,10);
    ellipse(xPos,yPos,radius,radius);
  }
  
  void Bewege()
  {
         xPos= xPos +1;
  }
  
  
}
