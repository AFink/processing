import processing.sound.*;

// Var Declaration

MainMenu menu;
Battlefield playarea;
Camera cam;
GameOverSeq goscreen;
TransitionSeq t;
int deathcount;

void setup() {
 size(1280, 720); // 720p HD
 frameRate(60); // 60 FPS

 // Init
 
 deathcount = 0;
 menu = new MainMenu(0,0, new SoundFile(this, "sound/menu.wav"));
 goscreen = new GameOverSeq(0,0,new SoundFile(this, "sound/gameover.wav"),new SoundFile(this, "sound/fly.wav"));
 t = new TransitionSeq(0,0);
 cam = new Camera(0,0);
 playarea = new Battlefield(0,0);
 println("Finished init");
 delay(2);
}

void draw() {
  if (menu.isStart()) {
  background(0);
  menu.music.stopPlay();
  println(deathcount);
  if (!t.go) {
   t.draw(cam); 
  } else {
  if (playarea.isGameOver() && goscreen.isRestart()) {
   playarea = new Battlefield(0,0);
   goscreen.reset();
   t.reset();
  }
  if (playarea.isGameOver()) {
    goscreen.draw(cam);
  } else {
  playarea.draw(cam);
  }
  }
  } else {
    if (menu.startGame.isClicked()) {
      playarea = new Battlefield(0,0);
      menu.music.stopPlay();
      goscreen.reset();
      t.reset();
     menu.start = true; 
    }
   menu.draw(cam); 
  }
}

void keyPressed() {
  if (playarea.isGameOver()) {
    deathcount += 1;
    goscreen.keyPress(keyCode);
  } else if (!t.isGo()) {
    t.keyPress(keyCode);
} else if (!playarea.isGameOver()) {
    playarea.keyPress(keyCode);
  }
}


void mouseClicked() {
 menu.mouseClick(); 
}
