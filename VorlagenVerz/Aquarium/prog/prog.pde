/* @pjs preload="fisch.png"; */

FISCH Marss;
FISCHFELD Samsora;

void setup()
{
  size(1000, 1000);
  background(#00BFFF);
  Marss = new FISCH(100, 100);
  Samsora = new FISCHFELD();
}


void draw()
{
  background(#00BFFF);
  Marss.ZeichneFisch();
  Marss.Bewege(1);
  Samsora.ZeichneAlles();
  Samsora.BewegeAlles();
}
