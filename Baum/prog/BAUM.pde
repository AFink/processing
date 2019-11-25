class BAUM
{
  int x;
  int y;
  int groesse;
  ELIPSE krone;
  RECHTECK stamm;

 BAUM()
   {
   groesse = 20;
   x = 100;
   y = 100;
   krone = new ELIPSE(x, y - (round(groesse * 1.6)),groesse);
   stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));
   
   }

  void Zeichne() {
    stamm.Zeichne();
    krone.Zeichne();
  }
}
