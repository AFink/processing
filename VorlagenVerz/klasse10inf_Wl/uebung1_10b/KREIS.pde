class KREIS
{
  private int x;
  private int y;
  private int radius;
  
  KREIS()
  {
    x = 70;
    y=  70;
    radius = 30;
  }
  
  void Zeichne()
  {
    ellipse(x,y,2*radius, 2*radius);
  }
}
