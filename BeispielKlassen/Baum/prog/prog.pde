

BAUM baum1;

void setup(){
  background(#FFFFFF);
  size(600,600);
  baum1= new BAUM();
}
void draw(){
  background(#FFFFFF);
  baum1.Zeichne();
  baum1.Wachse();
}
