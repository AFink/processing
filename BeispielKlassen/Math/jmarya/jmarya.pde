
void setup() {

  size(1280, 720); 
  println(Math.BerechneRabatt(30)); // Die Klasse und Methode ist static. Man brauch kein Referenzattribut
}

void draw() {
}


static class Math {
  static float BerechneRabatt(float wert) {
    if (wert > 300) {
      return wert * 0.98;
    } 
    else {
      return wert * 0.95;
    }
  }
}
