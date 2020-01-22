class BAUM
{
  
  int xKoord;
  int yKoord;
  KREIS baumkrone;
  RECHTECK stamm;
  
  BAUM()
  {
    xKoord = 100;
    yKoord = 100;
    baumkrone = new KREIS(xKoord, yKoord);
    stamm = new RECHTECK();
  }
  
  void Zeichne()
  {
    baumkrone.Zeichne();
    stamm.Zeichne();
  }
  
}
