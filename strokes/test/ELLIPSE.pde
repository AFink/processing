class ELLIPSE
{

  private int x;
  private int y;
  private int radiusx;
  private int radiusy;
  private float fillr;
  private float fillg;
  private float fillb;
  private int strokew;
  private float stroker;
  private float strokeg;
  private float strokeb;

  ELLIPSE()    // Konstruktor für eine Ellipse
  {
    x = 100;
    y = 200;
    radiusx = 50;
    radiusy = 40;
    fillr = 0;
    fillg = 255;
    fillb = 0;
    strokew = 1;
    stroker = 0;
    strokeg = 0;
    strokeb = 0;
  }

  ELLIPSE(int xneu, int yneu, int radius) //Konstruktor mit 3 Variablen -> Kreis
  {
    x = xneu;
    y = yneu;
    radiusx = radius;
    radiusy = radius;
    fillr = 0;
    fillg = 255;
    fillb = 0;
    strokew = 1;
    stroker = 0;
    strokeg = 0;
    strokeb = 0;
  }


  ELLIPSE(int xneu, int yneu, int radiusxneu, int radiusyneu)  //Konstruktor mit 4 Variablen -> Ellipse
  {
    x = xneu;
    y = yneu;
    radiusx = radiusxneu;
    radiusy = radiusyneu;
    fillr = 0;
    fillg = 255;
    fillb = 0;
    strokew = 1;
    stroker = 0;
    strokeg = 0;
    strokeb = 0;
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
  float GibFillR() {
    return fillr;
  }
  float GibFillG() {
    return fillg;
  }
  float GibFillB() {
    return fillb;
  }
  int GibStrokeW() {
    return strokew;
  }
  float GibStrokeR() {
    return stroker;
  }
  float GibStrokeG() {
    return strokeg;
  }
  float GibStrokeB() {
    return strokeb;
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
  void SetzeFillR(float rneu)
  {
    fillr = rneu;
  }
  void SetzeFillG(float gneu)
  {
    fillg = gneu;
  }
  void SetzeFillB(float bneu)
  {
    fillb = bneu;
  }
  void SetzeStrokeW(int strokewneu)
  {
    strokew = strokewneu;
  }
  void SetzeStrokeR(float rneu)
  {
    stroker = rneu;
  }
  void SetzeStrokeG(float gneu)
  {
    strokeg = gneu;
  }
  void SetzeStrokeB(float bneu)
  {
    strokeb = bneu;
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
    fillr = rneu;
    fillg = gneu;
    fillb = bneu;
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
    stroke(stroker,strokeg,strokeb);
    strokeWeight(strokew);
    fill(fillr, fillg, fillb);
    ellipse(x, y, radiusx, radiusy);
  }
}
