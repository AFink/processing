// Provides Basic Animation Functions
class Animation extends GameObject {
  
 private ArrayList<Texture> anim_sequence;
 private int timer;
 private int fps;
 
 Animation(int x, int y) {
   super(x,y);
   anim_sequence = new ArrayList<Texture>();
   timer = 0;
   fps = 30;
 }

// Setup Animation Object with Animation Data
 void setup(int start, int end, String path, int speed) {
   timer = 0;
   fps = speed;
   anim_sequence = new ArrayList<Texture>();

   // Load Animation Frames
   for (int i = start; i < end; i++) {
     anim_sequence.add(new Texture(path + (i+1) + ".png"));
   }
 }
  
 void draw(Camera cam) {
   PVector real = this.resolvePosition(cam);

// Calculate Current Frame
  timer++;
  int sec = int(timer / speed);
  if (sec > anim_sequence.size()) {
   timer = 0;
  }

  try {
  anim_sequence.get(sec).draw(real.x,real.y);
  } catch (Exception e) {

  }
 }

 int getFPS() { return fps; }
 void setFPS(int val) { fps = val; }
  
}