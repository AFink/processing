/* @pjs preload="fisch.png"; */

FISCH Marss;
FISCHFELD Samsora;


void setup()
{
  size(1000, 1000);
  background(#00BFFF);
  Marss = new FISCH(100, 100);
  Samsora = new FISCHFELD(15);
  
 // Samsora.LoescheFisch(1);
}


void draw()
{
  background(#00BFFF);
  Marss.ZeichneFisch();
  Marss.Bewege(-1);
  if(Marss.GibX() < -30){
    Marss.SetzeX(width);
  }
  Samsora.ZeichneAlles();
 // Samsora.BewegeAlles();
  
 
 // Samsora.LoescheFisch(20);
}


void mouseClicked(){
  if(mouseButton == 37){
  Samsora.ErstelleFisch();
  }else if(mouseButton == 39){
  Samsora.LoescheFisch3(3);
  }
}
