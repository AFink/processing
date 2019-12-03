class SPIEGELEI
{

  private int x;
  private int y;
  private int groesse;
  private ELIPSE eiklar;
  private ELIPSE eigelb;

  SPIEGELEI()
  {
    x = 100;
    y = 100;
    groesse = 100;
    eiklar = new ELIPSE(x, y, groesse, round(groesse/2));
    eiklar.SetzeFillFarbe(255, 255, 255);
    eigelb = new ELIPSE(x, y, round(groesse/4));
    eigelb.SetzeFillFarbe(255, 255, 0);
  }

  SPIEGELEI(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
    groesse = 100;
    eiklar = new ELIPSE(x, y, groesse, round(groesse/2));
    eiklar.SetzeFillFarbe(255, 255, 255);
    eigelb = new ELIPSE(x, y, round(groesse/4));
    eigelb.SetzeFillFarbe(255, 255, 0);
  }

  SPIEGELEI(int xneu, int yneu, int groesseneu)
  {
    x = xneu;
    y = yneu;
    groesse = groesseneu;
    eiklar = new ELIPSE(x, y, groesse, round(groesse/2));
    eiklar.SetzeFillFarbe(255, 255, 255);
    eigelb = new ELIPSE(x, y, round(groesse/4));
    eigelb.SetzeFillFarbe(255, 255, 0);
  }

  int GibX() {
    return x;
  }

  int GibY() {
    return y;
  }

  int GibGroesse() {
    return groesse;
  }
  void SetzeX(int xneu)
  {
    x = xneu;
        eiklar.SetzeKoordinaten(x,y);
    eigelb.SetzeKoordinaten(x,y);
  }
  void SetzeY(int yneu)
  {
    y = yneu;
        eiklar.SetzeKoordinaten(x,y);
    eigelb.SetzeKoordinaten(x,y);
  }

  void SetzeGroesse(int groesseneu)
  {
    groesse= groesseneu;
  }
  void SetzeKoordinaten(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
    eiklar.SetzeKoordinaten(x,y);
    eigelb.SetzeKoordinaten(x,y);
  }


  void Zeichne()
  {
    eiklar.Zeichne();
    eigelb.Zeichne();
  }
}
