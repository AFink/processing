FISCH johannes;
PImage bg;
void setup() {
  size(800,525);
  bg = loadImage("meer.jpg");
  background(bg);

  johannes = new FISCH();
}




void draw() {
  background(bg);
  johannes.Zeichne();
  johannes.Bewege(2);

}
