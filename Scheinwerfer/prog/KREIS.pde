class KREIS {
  int x;
  int y;
  int radius;

  KREIS() {
    x = 200;
    y = 200;
    radius = 10;
  }

  KREIS(int xneu, int yneu, int radiusneu) {
    x = xneu;
    y = yneu;
    radius = radiusneu;
  }

  int GibRadius() {
    return radius;
  }
  void SetzeKoordinaten(int xneu, int yneu) {
    x = xneu;
    y = yneu;
  }
  void SetzeRadius(int radiusneu) {
    radius = radiusneu;
  }
  void Zeichne() {
    fill(255, 255, 0);
    ellipse(x, y, radius*2, radius*2);
  }
}
