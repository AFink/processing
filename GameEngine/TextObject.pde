// Drawing Text
class TextObject extends GameObject {
  
  private String text;
  private PFont font;
  
  TextObject(int x, int y, String text) {
   super(x,y);
   this.text = text;
   font = createFont("SpacedOut.ttf", 64);
  }
  
  void updateText(String text) {
   this.text = text;
  }
  String getText() { return text; }
  
  @ Override void draw(Camera cam) {
   PVector real = this.resolvePosition(cam);
   textFont(font);
   fill(20,20,20);
   text(this.text, real.x+3, real.y+3);
   fill(255);
   text(this.text, real.x, real.y);
  }
}
