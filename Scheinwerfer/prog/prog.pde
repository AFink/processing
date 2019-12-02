SCHEINWERFER helena;
SCHEINWERFER andi;

void setup() {
  background(#FFFFFF);
  size(600, 600);
  helena = new SCHEINWERFER();
  andi = new SCHEINWERFER();
  andi.SetzeKoordinaten(200, 200);
}


void draw() {
  background(#FFFFFF);
  helena.Zeichne();
  andi.Zeichne();
  andi.Wachse();
}
