FISCH johannes;
ArrayList<FUTTER> essen = new ArrayList<FUTTER>();
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
  johannes.moveToFood(essen);
  for (FUTTER i : essen) {
      i.Zeichne();
      i.Bewege();
    }

}

void mousePressed() {
  essen.add(new FUTTER(mouseX, mouseY));
}
