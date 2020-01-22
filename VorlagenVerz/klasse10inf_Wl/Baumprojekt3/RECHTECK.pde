class RECHTECK
{
  int x;
  int y;
  int breite;
  int hoehe;
  
  RECHTECK()
  {
    x = 300;
    y = 400;
    breite = 20;
    hoehe = 40;
  }
  
  RECHTECK(int xNeu, int yNeu, int breiteNeu, int hoeheNeu)
  {
         // noch machen
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
