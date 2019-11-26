class SCHAF {

  private int x;
  private int y;
  private int groesse;
  private String richtung;
  private ELIPSE kopf;
  private ELIPSE koerper;
  private RECHTECK beinv;
  private RECHTECK beinh;

  SCHAF() {
    x = 300;
    y = 500;
    groesse = 50;
    richtung = "o";
    kopf = new ELIPSE(round(x - groesse*1.65), round(y - groesse/2), round(groesse*0.75));
    kopf.SetzeFillFarbe(255, 255, 255);
    koerper = new ELIPSE(x, y, round(groesse*1.75), groesse);
    koerper.SetzeFillFarbe(255, 255, 255);
    beinv = new RECHTECK(round(x - groesse*0.875), round(y + groesse*0.85), round(groesse/4), round(groesse*1.25));
    beinv.SetzeFillFarbe(0, 0, 0);
    beinh = new RECHTECK(round(x + groesse*0.875 - groesse/8), round(y + groesse*0.85), round(groesse/4), round(groesse*1.25));
    beinh.SetzeFillFarbe(0, 0, 0);
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
  String GibRichtung() {
    return richtung;
  }
  void SetzeX(int xneu)
  {
    x = xneu;
  }
  void SetzeY(int yneu)
  {
    y = yneu;
  }
  void SetzeGroesse(int groesseneu)
  {
    groesse = groesseneu;
  }
  void SetzeRichtung(String richtungneu)
  {
    richtung = richtungneu;
  }

  void SetzeKoordinaten(int xneu, int yneu)
  {
    x = xneu;
    y = yneu;
  }

  void Richtungswechsel() {
    if (richtung == "w") {
      richtung = "o";
    } else {
      richtung = "w";
    }
  }

  void Bewege()
  {
    if (richtung == "w") {
      x = x - 1;
      kopf.SetzeKoordinaten(round(x - groesse*1.65), round(y - groesse/2));
    }
    if (richtung == "o") {
      x = x + 1;
      kopf.SetzeKoordinaten(round(x + groesse*1.65), round(y - groesse/2));
    }
    koerper.SetzeKoordinaten(x, y);
    beinv.SetzeKoordinaten(round(x - groesse*0.875), round(y + groesse*0.85));
    beinh.SetzeKoordinaten(round(x + groesse*0.875 - groesse/8), round(y + groesse*0.85));
  }


  void Zeichne() {
    beinv.Zeichne();
    beinh.Zeichne();
    koerper.Zeichne();
    kopf.Zeichne();
  }
}
