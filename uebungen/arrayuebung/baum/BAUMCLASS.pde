class BAUM {

  int x;
  float y;
  PImage baumeins;
  PImage baumzwei;
  PImage baumdrei;
  BAUM() {
    x = 100;
    y = 600;
    baumeins = loadImage("b1.jpg");
    baumzwei = loadImage("b2.jpg");
    baumdrei = loadImage("b3.png");
  }

  BAUM(int xNeu, float yNeu) {
    x = xNeu;
    y = yNeu;
    baumeins = loadImage("b1.jpg");
    baumzwei = loadImage("b2.jpg");
    baumdrei = loadImage("b3.png");
  }
  
  int gibX() {
    return x;
  }

  void setzeX(int xNeu) {
    x = xNeu;
  }


  void BewegeBaum() {
    x = x + 1;
  }


  void ZeichneBaum() {
    image(baumdrei, x, y);
  }
}
