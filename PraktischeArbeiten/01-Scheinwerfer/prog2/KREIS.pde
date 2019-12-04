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

  KREIS(int x, int y, int radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }

  void ZeichneKreis()
  {
    ellipse(x, y, 2*radius, 2*radius);
  }

  int GibRadius() {
    return radius;
  }

  void SetzeRadius(int neu) {
    radius = neu;
  }

  void SetzeKoord(int x, int y) {
    this.x = x; 
    this.y = y;
  }
}  

