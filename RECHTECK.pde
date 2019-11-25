class RECHTECK
{
  private int x;
  private int y;
  private int breite;
  private int hoehe;
  private float r;
  private float g;
  private float b;


  RECHTECK()
  {
    x = 300;
    y = 400;
    breite = 20;
    hoehe = 80;
    r = 85;
    g = 70;
    b = 9;
  }

  RECHTECK(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
    breite = 20;
    hoehe = 80;
    r = 85;
    g = 70;
    b = 9;
  }

  RECHTECK(int xneu, int yneu, int breiteneu, int hoeheneu)
  {
    x = xneu;
    y = yneu;
    breite = breiteneu;
    hoehe = hoeheneu;
    r = 85;
    g = 70;
    b = 9;
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
  void SetzeBreite(int breiteneu)
  {
    breite = breiteneu;
  }
  void SetzeHoehe(int hoeheneu)
  {
    hoehe = hoeheneu;
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

  void SetzeGroesse(int hoeheneu, int breiteneu)
  {
    hoehe = hoeheneu;
    breite = breiteneu;
  }

  void SetzeFarbe(float rneu, float gneu, float bneu)
  {
    r = rneu;
    g = gneu;
    b = bneu;
  }
  /*
  void SetzeVariables(int xneu,int yneu, int breiteneu, int hoeheneu) //Freiwillig, hilft Andi manchmal :D
   {
   x = xneu;
   y = yneu;
   hoehe = hoeheneu;
   breite = breiteneu;
   }
   */

  void Zeichne()
  {
    fill(r, g, b);
    rect(x, y, breite, hoehe);
  }
}
