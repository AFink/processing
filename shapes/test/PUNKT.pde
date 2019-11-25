// Andreas Fink 2019
class PUNKT
{
  private int x;
  private int y;
  private boolean stroke;
  private int strokew;
  private float stroker;
  private float strokeg;
  private float strokeb;

  PUNKT()
  {
    x = 300;
    y = 400;
    stroke = true;
    strokew = 1;
    stroker = 0;
    strokeg = 0;
    strokeb = 0;
  }

  PUNKT(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
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

  void SetzeStrokeFarbe(float rneu, float gneu, float bneu)
  {
    stroker = rneu;
    strokeg = gneu;
    strokeb = bneu;
  }

  void Zeichne()
  {
    if (stroke == true) {
      stroke(stroker, strokeg, strokeb);
    } else {
      noStroke();
    };
    strokeWeight(strokew);
    triangle(x1, y1, x2, y2, x3, y3);
  }
}
