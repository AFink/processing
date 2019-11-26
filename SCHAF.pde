class SCHAF {

  private int x;
  private int y;
  private int groesse;
  private ELIPSE kopf;
  private ELIPSE koerper;
  private RECHTECK beinv;
  private RECHTECK beinh;

  SCHAF(){
    x = 500;
    y = 500;
    groesse = 10;
    kopf = new ELIPSE();
    koerper = new ELIPSE(x-groesse*2, y, groesse*4,groesse*2);
    
    beinv = new RECHTECK(x,y);
    beinh = new RECHTECK();
  }
  
  
  
  
  void Zeichne(){
    beinv.Zeichne();
    beinh.Zeichne();
    koerper.Zeichne();
    kopf.Zeichne();
  }
}
