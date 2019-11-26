class MainMenu extends Sequence {

private TextObject title;
private Background bg;
private Sound music;
private Button startGame;
private boolean start = false;

MainMenu(int x, int y, SoundFile sound) {
  super(x,y);
  music = new Sound(sound);
  bg = new Background(0,0);
  title = new TextObject(330, height/6, "Spaced Out");
  startGame = new Button(330, height/4, "Start Game");
}


@ Override void draw(Camera cam) {
  music.loop();
  bg.draw(cam);
  title.draw(cam);
  startGame.draw(cam);
}

void reset() {
   this.start = true;
   this.music.stopPlay();
}

void mouseClick() {
 startGame.mouseClick();
}

boolean isStart() {return start;}
}

class Button {
  
  private PVector pos;
  private PVector size;
  private TextObject text;
  private boolean clicked = false;
  
  Button(int x, int y, String text) {
    pos = new PVector(x,y);
    size = new PVector(650, 100);
    this.text = new TextObject(x, y+80, text);
  }
  
  // Collision Detection
  boolean collide(PVector bpos) {
    if (
    this.pos.x < bpos.x + 5 &&
    this.pos.x + this.pos2.x > bpos.x &&
    this.pos.y < bpos.y + 5 &&
    this.pos2.y + this.pos.y > bpos.y) {
      return true;
    } else {
      return false;
    }
  }
  
  void mouseClick() {
    if(this.collide(new PVector(mouseX, mouseY))) {
      clicked = true;
    }
  }
  
  
  // Draw the object
  void draw(Camera cam) {
    if (this.collide(new PVector(mouseX, mouseY))) {
      fill(50, 50, 50);
    } else {
   fill(0);
    }
   rect(pos.x, pos.y, size.x, size.y);
   text.draw(cam);
  }

  PVector getPosition() { return pos; }
  void setPosition(float x, float y) { pos = new PVector(x, y); }
  PVector getSize() { return size; }
  void setSize(float x, float y) { size = new PVector(x, y); }
  String getText() { return text; }
  void setText(String text) { this.text = text; }
  boolean isClicked() { return clicked; }
  
}
