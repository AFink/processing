KREIS ball;
KREIS egon;
KREIS anna;

void setup()
{
  size(600,600);
  anna = new KREIS();
  
  ball = new KREIS();
 
  
  egon = new KREIS();
  background(255,255,255);
   ball.SetzeKoordinaten(150, 150 );
   anna.SetzeKoordinaten(250, 250);
  
}

void draw()
{
  ball.Zeichne();
  egon.Zeichne();
  anna.Zeichne();
  
}
