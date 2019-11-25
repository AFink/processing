class BAUM
{
  int x;
  int y;
  int groesse;
  ELIPSE krone;
  RECHTECK stamm;

 BAUM()
   {
   x = 100;
   y = 100;
   krone = new ELIPSE(x,y + 30 + round(30 * 1.5),groesse*2);
   stamm = new RECHTECK(x,y +(krone.GibRadiusX()));
   }
  BAUM(int xneu, int yneu, int groesseneu)
  {
    groesse = groesseneu;
    x = xneu;
    y = yneu;
    krone = new ELIPSE(x, y - (round(groesse * 1.6)), groesse);
    stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));
  }




  void SetzeKoordinaten(int xneu, int yneu) {
    x = xneu;
    y = yneu;
  }
  void Zeichne() {
    stamm.Zeichne();
    krone.Zeichne();
  }
}
