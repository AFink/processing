BAUM h;
WALD g;

void setup() {
  size(500, 822);
  background(#502626);
  h = new BAUM();
  g = new WALD();
}

void draw() {
  background(#502626);
  h.BewegeBaum();
  h.ZeichneBaum();
 // println(h.gibX());
 g.BewegeAlles();
 g.ZeichneAlles();
}
