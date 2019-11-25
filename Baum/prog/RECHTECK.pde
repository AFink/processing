// Andreas Fink 2019
class RECHTECK
{
  private int x;
  private int y;
  private int breite;
  private int hoehe;
  private boolean fill;
  private float fillr;
  private float fillg;
  private float fillb;
  private boolean stroke;
  private int strokew;
  private float stroker;
  private float strokeg;
  private float strokeb;


  RECHTECK()
  {
    x = 300;
    y = 400;
    breite = 20;
    hoehe = 80;
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

  RECHTECK(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
    breite = 20;
    hoehe = 80;
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

  RECHTECK(int xneu, int yneu, int breiteneu, int hoeheneu)
  {
    x = xneu;
    y = yneu;
    breite = breiteneu;
    hoehe = hoeheneu;
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
  int GibBreite() {
    return breite;
  }
  int GibHoehe() {
    return hoehe;
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
  void SetzeBreite(int breiteneu)
  {
    breite = breiteneu;
  }
  void SetzeHoehe(int hoeheneu)
  {
    hoehe = hoeheneu;
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

  void SetzeGroesse(int hoeheneu, int breiteneu)
  {
    hoehe = hoeheneu;
    breite = breiteneu;
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
    rect(x, y, breite, hoehe);
  }
}
