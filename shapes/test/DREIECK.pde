class DREIECK
{
  private int x1;
  private int y1;
  private int x2;
  private int y2;
  private int x3;
  private int y3;
  private boolean fill;
  private float fillr;
  private float fillg;
  private float fillb;
  private boolean stroke;
  private int strokew;
  private float stroker;
  private float strokeg;
  private float strokeb;


  DREIECK()
  {
    x1 = 300;
    y1 = 400;
    x2 = 200;
    y2 = 400;
    x3 = 300;
    y3 = 100;
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

  DREIECK(int x1neu, int y1neu, int x2neu, int y2neu, int x3neu, int y3neu)
  {
    x1 = x1neu;
    y1 = y1neu;
    x2 = x2neu;
    y2 = y2neu;
    x3 = x3neu;
    y3 = y3neu;
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

  int GibX1() {
    return x1;
  }
  int GibY1() {
    return y1;
  }
  int GibX2() {
    return x2;
  }
  int GibY2() {
    return y2;
  }
  int GibX3() {
    return x3;
  }
  int GibY3() {
    return y3;
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
  void SetzeX1(int xneu)
  {
    x1 = xneu;
  }
  void SetzeY1(int yneu)
  {
    y1 = yneu;
  }
  void SetzeX2(int xneu)
  {
    x2 = xneu;
  }
  void SetzeY2(int yneu)
  {
    y2 = yneu;
  }
  void SetzeX3(int xneu)
  {
    x3 = xneu;
  }
  void SetzeY3(int yneu)
  {
    y3 = yneu;
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

  void SetzeKoordinaten(int x1neu, int y1neu, int x2neu, int y2neu, int x3neu, int y3neu)
  {
    x1 = x1neu;
    y1 = y1neu;
    x2 = x2neu;
    y2 = y2neu;
    x3 = x3neu;
    y3 = y3neu;
  }
  void SetzeKoordinaten1(int x1neu, int y1neu)
  {
    x1 = x1neu;
    y1 = y1neu;
  }
  void SetzeKoordinaten2(int x2neu, int y2neu)
  {
    x2 = x2neu;
    y2 = y2neu;
  }
  void SetzeKoordinaten3(int x3neu, int y3neu)
  {
    x3 = x3neu;
    y3 = y3neu;
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
    triangle(x1, y1, x2, y2, x3, y3);
  }
}
