class BAUM
{
  int x;
  int y;
  int groesse;
  ELLIPSE krone;
  RECHTECK stamm;

 BAUM()
   {
   x = 100;
   y = 100;
   krone = new ELLIPSE(x,y + 30 + round(30 * 1.5));
   stamm = new RECHTECK(x,y +(krone.GibRadiusX));
   }
  BAUM(int xneu, int yneu, int groesseneu)
  {
    sichtbar = true;
    groesse = groesseneu;
    x = xneu;
    y = yneu;
    krone = new KREIS(x, y - (round(groesse * 1.6)), groesse);
    stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));
  }



  void Zeichne() {
    stamm.Zeichne();
    krone.Zeichne();
  }
  void SetzeKoordinaten(int xneu, int yneu) {
    x = xneu;
    y = yneu;
  }
  void Wachse(int wert)
  {
    groesse = groesse + wert;
    krone.SetzeVariables(x, y - (round(groesse * 1.6)), groesse);
    stamm.SetzeVariables(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));
  }



  void SetzeGroesse(int wert) {
    groesse = wert;
  }


}
