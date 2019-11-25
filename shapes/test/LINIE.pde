// Andreas Fink 2019
class LINIE
{
  private int x1;
  private int y1;
  private int x2;
  private int y2;
  private boolean stroke;
  private int strokew;
  private float stroker;
  private float strokeg;
  private float strokeb;


  LINIE()
  {
    x1 = 300;
    y1 = 400;
    x2 = 200;
    y2 = 400;
    stroke = true;
    strokew = 1;
    stroker = 0;
    strokeg = 0;
    strokeb = 0;
  }

  LINIE(int x1neu, int y1neu, int x2neu, int y2neu)
  {
    x1 = x1neu;
    y1 = y1neu;
    x2 = x2neu;
    y2 = y2neu;
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

  void SetzeKoordinaten(int x1neu, int y1neu, int x2neu, int y2neu)
  {
    x1 = x1neu;
    y1 = y1neu;
    x2 = x2neu;
    y2 = y2neu;
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
    line(x1, y1, x2, y2);
  }
}
