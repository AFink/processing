/* @pjs preload="fisch.png"; */

FISCH egon;

void setup()
{
    size(800,525);
    background(#00BFFF);
    egon = new FISCH(10,400);
     
}


void draw()
{
  background(#00BFFF);
  egon.ZeichneFisch();
  egon.Bewege(1);
  
  
}



