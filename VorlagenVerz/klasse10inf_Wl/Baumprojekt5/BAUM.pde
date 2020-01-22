class BAUM
{
  
  private int xKoord;
  private int yKoord;
  private ELLIPSE baumkrone;
  private RECHTECK stamm;
  
  BAUM()
  {
    xKoord = 100;
    yKoord = 100;
    baumkrone = new ELLIPSE(xKoord, yKoord);
    stamm = new RECHTECK();
    stamm.SetzeKoordinaten(xKoord-30,yKoord+baumkrone.GibxRadius());
    System.out.println("Koordinaten der Baumkrone:  " + baumkrone.GibxPos() + "  " + baumkrone.GibyPos());
    System.out.println("Koordinaten der Baumstamms:  " + stamm.Gibx() + "  " + stamm.Giby());
  }
  
  void Zeichne()
  {
    baumkrone.Zeichne();
    stamm.Zeichne();
  }
  
}
