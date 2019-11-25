class ELLIPSE
{

  private int x;
  private int y;
  private int radiusx;
  private int radiusy;
  private float r;
  private float g;
  private float b;

  ELLIPSE()    // Konstruktor für eine Ellipse
  {
    x = 100;
    y = 200;
    radiusx = 50;
    radiusy = 40;
    r = 0;
    g = 255;
    b = 0;
  }

  ELLIPSE(int xneu, int yneu, int radius) //Konstruktor mit 3 Variablen -> Kreis
  {
    x = xneu;
    y = yneu;
    radiusx = radius;
    radiusy = radius;
    r = 0;
    g = 255;
    b = 0;
  }


  ELLIPSE(int xneu, int yneu, int radiusxneu, int radiusyneu)  //Konstruktor mit 4 Variablen -> Ellipse
  {
    x = xneu;
    y = yneu;
    radiusx = radiusxneu;
    radiusy = radiusyneu;
    r = 0;
    g = 255;
    b = 0;
  }


  int GibX() {
    return x;
  }
  int GibY() {
    return y;
  }
  int GibRadiusX() {
    return radiusx;
  }
  int GibRadiusY() {
    return radiusy;
  }
  float GibR() {
    return r;
  }
  float GibG() {
    return g;
  }
  float GibB() {
    return b;
  }

  void SetzeX(int xneu)
  {
    x = xneu;
  }
  void SetzeY(int yneu)
  {
    y = yneu;
  }
  void SetzeRadiusX(int radiusxneu)
  {
    radiusx = radiusxneu;
  }
  void SetzeRadiusY(int radiusyneu)
  {
    radiusy = radiusyneu;
  }
  void SetzeR(float rneu)
  {
    r = rneu;
  }
  void SetzeG(float gneu)
  {
    g = gneu;
  }
  void SetzeB(float bneu)
  {
    g = gneu;
  }

  void SetzeKoordinaten(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
  }
  void SetzeKreisRadius(int radiusneu) {
    radiusx = radiusneu;
    radiusy = radiusneu;
  }
  void SetzeRadien(int radiusxneu, int radiusyneu) {
    radiusx = radiusxneu;
    radiusy = radiusyneu;
  }
  void SetzeFarbe(float rneu, float gneu, float bneu)
  {
    r = rneu;
    g = gneu;
    b = bneu;
  }
  /*
  void SetzeVariables(int xneu, int yneu,int radiusneu) // optional, hilft andi
   {
   x = xneu;
   y = yneu;
   radius = radiusneu;
   }
   */
  void Zeichne()
  {
    fill(r, g, b, a);
    ellipse(x, y, radius, radius);
  }
}
