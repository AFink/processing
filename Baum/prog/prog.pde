//use ELLIPSE.pde and RECHTECK.pde from ../shapes/

BAUM baum1;
void setup(){
size(600,600);
  baum1= new BAUM();
}
void draw(){
  background(#ffffff);
baum1.Zeichne();
baum1.Wachse();
}
