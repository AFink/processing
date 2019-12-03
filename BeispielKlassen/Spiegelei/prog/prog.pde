

SPIEGELEI ei1;
SPIEGELEI ei2;

void setup(){
  background(#FFFFFF);
  size(600,600);
  ei1= new SPIEGELEI();
  ei2= new SPIEGELEI();
  ei2.SetzeKoordinaten(200,400);
}
void draw(){
  background(#FFFFFF);
  ei1.Zeichne();
  ei2.Zeichne();
}
