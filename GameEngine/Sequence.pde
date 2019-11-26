// Game Sequence
class Sequence {

  private PVector pos;
  private ArrayList<GameObject> gameObjs = new ArrayList<GameObject>();

  Sequence(int x, int y) {
    pos = new PVector(x, y);
  }


  // Update Objects in Scene
  void update() {
    return;
  }
  
  // Key Actions
  void keyPress(int keycode) {
      return;
  }
  
  // Clear unseen Objects from Array for better Performance
  void clearViewCache() {
    for (int i = 0; i < gameObjs.size(); i++) {
     if ((gameObjs.get(i).pos.x < 0 || gameObjs.get(i).pos.x > width) || (gameObjs.get(i).pos.y < 0 || gameObjs.get(i).pos.y > height)) {
         gameObjs.remove(i);
     }
    }
  }

  // Draw the Scene
  void draw(Camera cam) {
    this.update();
    for (GameObject i : gameObjs) {
      i.draw(cam);
    }
  }

  void addObject(GameObject obj) {
    gameObjs.add(obj);
  }
}

// Level
class Battlefield extends Sequence {
  
  private Player p;
  private TimerScore ts;
  private Background bg;
  private int levelID;
  private boolean gameOver = false;
 
  Battlefield(int x, int y) {
   super(x,y);
   levelID = 1;
   bg = new Background(0,0);
   p = new Player(0, height-124);
   ts = new TimerScore(10, 60);
   gameObjs.add(new Shuttle(200, 0));
  }
  
  void update() {
    // Add new Enemies by chance
    if (random(0, 100) < 2) {
     gameObjs.add(new Shuttle(noise(random(0, width-100))*random(0.0,1.0)*width, 0)); 
    }
    
    for (int i = 0; i < gameObjs.size(); i++) {
      // Check for Collision with Player
      if (p.collide(gameObjs.get(i)) && gameObjs.get(i).getClass().getName() == "SpacedOut$Shuttle") {
       ts.score = 0;
       gameOver = true;
      }
    
    // Check for Collision with Laser
     for (int e = 0; e < gameObjs.size(); e++) {
       try {
       if (
       gameObjs.get(i).collide(gameObjs.get(e)) &&
       (
       (gameObjs.get(i).getClass().getName() == "GameEngine$Laser" && gameObjs.get(e).getClass().getName() == "GameEngine$Shuttle")
       || (gameObjs.get(i).getClass().getName() == "GameEngine$Shuttle" && gameObjs.get(e).getClass().getName() == "GameEngine$Laser"))) {
          if (gameObjs.get(i).getClass().getName() == "GameEngine$Shuttle") {
           gameObjs.remove(i);
           gameObjs.remove(e-1);
           ts.score += 1;
          }
     }
    } catch (Exception er) {
  }
    }
    
  }
  }
  
  @ Override void draw(Camera cam) {
    bg.draw(cam);
    println("\n" + gameObjs);
    this.clearViewCache();
    this.update();
    for (GameObject i : gameObjs) {
      i.draw(cam);
    }
   p.draw(cam);
   ts.draw(cam);
  }
  
  @ Override void keyPress(int keycode) {
    if (keycode == LEFT) {
      p.update(-(width/5),0);
    }
    if (keycode == RIGHT) {
     p.update(width/5,0);
    }
    if (keycode == ' ') {
      p.shoot(this);
    } 
  }

  boolean isGameOver() {
    return gameOver;
  }
  
  
}

class GameOverSeq extends Sequence {

private Animation goa;
private TextObject got;
private Sound gameover;
private Sound fly;
private boolean restart = false;
private int timer = 0;
private ArrayList<DatAdam> hydra;

GameOverSeq(int x, int y, SoundFile sound, SoundFile fly) {
  super(x,y);
gameover = new Sound(sound);
this.fly = new Sound(fly);
hydra = new ArrayList<DatAdam>();
hydra.add(new DatAdam(1400, -250));
hydra.add(new DatAdam((1400)+64, -250));
hydra.add(new DatAdam((1400)+128, -250));
 goa = new Animation(0,0);
 goa.setup(9, 60, "gameover/gameover", 3);
 got = new TextObject(350, height/2, "GAME OVER");
}


@ Override void draw(Camera cam) {
  timer++;
  if ((timer / frameRate) > 60) {
    fly.playOnce();
  }
  println(timer/frameRate);
  this.gameover.playOnce();
  goa.draw(cam); 
  got.draw(cam);
  for (DatAdam i : hydra) {
      i.draw(cam);
    }
}

void reset() {
this.gameover.reset();
   this.restart = false;
   this.fly.reset();
   this.fly.stopPlay();
   for (int i = 0; i < 3; i++) {
    hydra.get(i).pos.x = 1400+(64*i);
    hydra.get(i).pos.y = -250;
   }
   this.timer = 0; 
}

  @ Override void keyPress(int keycode) {
    if (keycode == ' ') {
      restart = true;
    }
  }

  boolean isRestart() {
    return restart;
  }
}

class TransitionSeq extends Sequence {
  
  
private Animation anim;
private boolean go = false;
private int timer = 0;
 
  TransitionSeq(int x, int y) {
   super(x,y);
    anim = new Animation(0,0);
    anim.setup(0, 11, "transition1/transition", 5);
  }
  
  @ Override void draw(Camera cam) {
  timer++;
  if ((timer / frameRate) > 5) {
    go = true;
  }
  anim.draw(cam);
}

void reset() {
     this.go = false;
   this.timer = 0;
}

  @ Override void keyPress(int keycode) {
    if (keycode == ' ') {
      go = true;
    } 
  }

  boolean isGo() {
    return go;
  }

}
