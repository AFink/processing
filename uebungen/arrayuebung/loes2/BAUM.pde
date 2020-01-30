class BAUM {

  float x;
  float y;

  BAUM() {
    x = 10;
    y = 100;
  }

  BAUM(float xNeu, float yNeu) {
    x = xNeu;
    y = yNeu;
  }

  float gibX() {
    return x;
  }
  float gibY() {
    return y;
  }

  void setzeX(float xNeu) {
    x = xNeu;
  }
  void setzeY(float yNeu) {
    y = yNeu;
  }
  void Bewege() {
    x = x - 1;
  }

  void Zeichne() {  //basic drawing
    fill(#555555);
    rect(x-7, y-40, 15, 80);
    fill(0, 255, 0);
    ellipse(x, y-25, 40, 40);
  }
}
