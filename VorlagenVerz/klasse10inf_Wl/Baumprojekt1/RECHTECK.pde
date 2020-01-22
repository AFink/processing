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
  
  void Zeichne()
  {
    rect(x,y,breite,hoehe);
  }
  
}
