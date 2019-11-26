// Andreas Fink 2019
//use ELLIPSE.pde and RECHTECK.pde from ../shapes/
class BAUM
{
  private int x;
  private int y;
  private int groesse;
  private ELIPSE krone;
  private RECHTECK stamm;

  BAUM()
  {
    groesse = 50;
    x = 400;
    y = 300;

    krone = new ELIPSE(x, y - (round(groesse * 1.6)), groesse*2);
    stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));

    krone.SetzeFillFarbe(69, 133, 108);
    krone.SetzeStroke(false);
    stamm.SetzeFillFarbe(119, 69, 39);
    stamm.SetzeStroke(false);
  }

  BAUM(int xneu, int yneu)
  {
    groesse = 100;
    x = xneu;
    y = yneu;

    krone = new ELIPSE(x, y - (round(groesse * 1.6)), groesse*2);
    stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));

    krone.SetzeFillFarbe(69, 133, 108);
    krone.SetzeStroke(false);
    stamm.SetzeFillFarbe(119, 69, 39);
    stamm.SetzeStroke(false);
  }

  BAUM(int xneu, int yneu, int groesseneu)
  {
    groesse = groesseneu;
    x = xneu;
    y = yneu;


    krone = new ELIPSE(x, y - (round(groesse * 1.6)), groesse*2);
    stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));

    krone.SetzeFillFarbe(69, 133, 108);
    krone.SetzeStroke(false);
    stamm.SetzeFillFarbe(119, 69, 39);
    stamm.SetzeStroke(false);
  }

  int GibX() {
    return x;
  }
  int GibY() {
    return y;
  }
  int GibFillGroesse() {
    return groesse;
  }
  float GibKroneR() {
    return krone.GibFillR();
  }
  float GibKroneG() {
    return krone.GibFillG();
  }
  float GibKroneB() {
    return krone.GibFillB();
  }
  float GibStammR() {
    return stamm.GibFillR();
  }
  float GibStammG() {
    return stamm.GibFillG();
  }
  float GibStammB() {
    return stamm.GibFillB();
  }

  void SetzeX(int xneu) {
    x = xneu;
  }
  void SetzeY(int yneu) {
    y = yneu;
  }
  void SetzeFillGroesse(int groesseneu) {
    groesse = groesseneu;
  }
  void SetzeKroneR(float rneu)
  {
    krone.SetzeFillR(rneu);
  }
  void SetzeKroneG(float gneu)
  {
    krone.SetzeFillR(gneu);
  }
  void SetzeKroneB(float bneu)
  {
    krone.SetzeFillB(bneu);
  }
  void SetzeStammR(float rneu)
  {
    stamm.SetzeFillR(rneu);
  }
  void SetzeStammG(float gneu)
  {
    stamm.SetzeFillG(gneu);
  }
  void SetzeStammB(float bneu)
  {
    stamm.SetzeFillB(bneu);
  }
  void SetzeKoordinaten(int xneu, int yneu) {
    x = xneu;
    y = yneu;
  }
  void SetzeKroneFarbe(float rneu, float gneu, float bneu)
  {
    krone.SetzeFillR(rneu);
    krone.SetzeFillG(gneu);
    krone.SetzeFillB(bneu);
  }
  void SetzeStammFarbe(float rneu, float gneu, float bneu)
  {
    stamm.SetzeFillR(rneu);
    stamm.SetzeFillG(gneu);
    stamm.SetzeFillB(bneu);
  }
  void Wachse() {
    groesse = groesse + 1;
    krone.SetzeKoordinaten(x, y - (round(groesse * 1.6)));
    krone.SetzeRadius(groesse*2);
    stamm.SetzeKoordinaten(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2));
    stamm.SetzeGroesse(round(groesse * 0.2), round(groesse * 1.2));
  }

  void Zeichne() {
    stamm.Zeichne();
    krone.Zeichne();
  }
}
