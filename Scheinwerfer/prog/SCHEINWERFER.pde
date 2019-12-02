class SCHEINWERFER {
  int x;
  int y;
  int groesse;

  KREIS maxi;
  KREIS flo;
  SCHEINWERFER() {
    x = 400;
    y = 400;
    groesse = 30;

    maxi = new KREIS(x-groesse*3, y, groesse);
    // maxi.SetzeKoordinaten(x-groesse*3, y);
    //maxi.SetzeRadius(groesse);
    flo = new KREIS(x+groesse*3, y, groesse);
    // flo.SetzeKoordinaten(x+groesse*3, y);
    // flo.SetzeRadius(groesse);
  }

  void SetzeKoordinaten(int xneu, int yneu) {
    x = xneu;
    y = yneu; 
    maxi.SetzeKoordinaten(x-groesse*3, y);
    flo.SetzeKoordinaten(x+groesse*3, y);
  }

  void Wachse() {
    groesse = groesse +1;
    maxi.SetzeRadius(groesse);
    flo.SetzeRadius(groesse);
    maxi.SetzeKoordinaten(x-groesse*3, y);
    flo.SetzeKoordinaten(x+groesse*3, y);
  }
  void Zeichne() {
    maxi.Zeichne();
    flo.Zeichne();
  }
}
