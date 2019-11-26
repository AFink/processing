import processing.sound.*;

// Sound Playing
class Sound {
 
  private SoundFile s;
  private boolean played = false;
  
  Sound(SoundFile s) {
    this.s = s;
  }
  
  void reset() {
   played = false; 
  }
  
  void loop() {
  if (!s.isPlaying()) {
   s.play(); 
  }
  }
  
  void stopPlay() {
   this.s.stop();
   //this.s.amp(0);
  }
  
  void playOnce() {
    if (!played) {
      played = true;
      s.play();
    }
  }

  boolean isPlayed() {
    return played;
  }
}
