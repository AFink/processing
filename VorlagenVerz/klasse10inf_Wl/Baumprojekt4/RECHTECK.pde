class RECHTECK
{
  private int x;
  private int y;
  private int breite;
  private int hoehe;
  
   RECHTECK()
  {
    x = 300;
    y = 400;
    breite = 60;
    hoehe = 40;
  }
  
  RECHTECK(int xNeu, int yNeu, int breiteNeu, int hoeheNeu)
  {
       // noch machen
  }
  
  void SetzeKoordinaten(int xNeu, int yNeu)
  {
    x = xNeu;
    y = yNeu;
  }
  
  void Zeichne()
  {
    rect(x,y,breite,hoehe);
  }
  
  int Gibx()
  {
    return x;
  }
  
  int Giby()
  {
    return y;
  }
  
  int GibBreite()
  {
    return breite;
  }
  
  int GibHoehe()
  {
    return hoehe;
  }
  
}
