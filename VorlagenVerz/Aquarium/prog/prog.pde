/* @pjs preload="fisch.png"; */

FISCH egon;
FISCHFELD andi;

void setup()
{
  size(800, 525);
  background(#00BFFF);
  egon = new FISCH(10, 400);
  andi = new FISCHFELD();
}


void draw()
{
  background(#00BFFF);
  egon.ZeichneFisch();
  egon.Bewege(1);
  andi.ZeichneAlles();
  andi.BewegeAlles();
}

