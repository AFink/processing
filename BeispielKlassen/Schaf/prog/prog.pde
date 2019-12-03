// Andreas Fink 2019
SCHAF schaf1;

void setup() {
  size(600, 600);
  schaf1= new SCHAF();
}
void draw() {
  background(0, 0, 255);
  schaf1.Zeichne();
  schaf1.Bewege();
  if (schaf1.GibX() > 600) {
    schaf1.Richtungswechsel();
  }
  if (schaf1.GibX() < 0) {
    schaf1.Richtungswechsel();
  }
}
