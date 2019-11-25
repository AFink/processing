class ELLIPSE
{

  private int x;
  private int y;
  private int radiusx;
  private int radiusy;
  private boolean fill;
  private float fillr;
  private float fillg;
  private float fillb;
  private boolean stroke;
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
    fill = true;
    fillr = 0;
    fillg = 255;
    fillb = 0;
    stroke = true;
    strokew = 1;
    stroker = 0;
    strokeg = 0;
    strokeb = 0;
  }
  ELLIPSE(int xneu, int yneu, int radiusneu) //Konstruktor mit 3 Variablen -> Kreis
  {
    x = xneu;
    y = yneu;
    radiusx = radiusneu;
    radiusy = radiusneu;
    fill = true;
    fillr = 0;
    fillg = 255;
    fillb = 0;
    stroke = true;
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
    fill = true;
    fillr = 0;
    fillg = 255;
    fillb = 0;
    stroke = true;
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
  boolean GibFill() {
    return fill;
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
  boolean GibStroke() {
    return stroke;
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
  void SetzeFill(boolean fillneu) {
    fill = fillneu;
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
  void SetzeStroke(boolean strokeneu) {
    stroke = strokeneu;
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
  void SetzeRadius(int radiusneu) {
    radiusx = radiusneu;
    radiusy = radiusneu;
  }
  void SetzeRadien(int radiusxneu, int radiusyneu) {
    radiusx = radiusxneu;
    radiusy = radiusyneu;
  }
  void SetzeFillFarbe(float rneu, float gneu, float bneu)
  {
    fillr = rneu;
    fillg = gneu;
    fillb = bneu;
  }
  void SetzeStrokeFarbe(float rneu, float gneu, float bneu)
  {
    stroker = rneu;
    strokeg = gneu;
    strokeb = bneu;
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
    if (stroke = true) {
      stroke(stroker, strokeg, strokeb);
    } else {
      noStroke();
    };
    strokeWeight(strokew);
    if (fill = true) {
      fill(fillr, fillg, fillb);
    } else {
      noFill();
    };
    ellipse(x, y, radiusx, radiusy);
  }
}
