class BAUM
{
  int x;
  int y;
  int groesse;
  ELIPSE krone;
  RECHTECK stamm;

 BAUM()
   {
   groesse = 100;
   x = 400;
   y = 300;
   krone = new ELIPSE(x, y - (round(groesse * 1.6)),groesse*2);
   stamm = new RECHTECK(x-(round(groesse * 0.2))/2, y - round(groesse * 1.2), round(groesse * 0.2), round(groesse * 1.2));
   
   krone.SetzeFillFarbe(69,133,108);
   krone.SetzeStroke(false);
   println("done");
   stamm.SetzeFillFarbe(119,69,39);
   stamm.SetzeStroke(false);
   
   }

  void Zeichne() {
    stamm.Zeichne();
    krone.Zeichne();
  }
}
