FISCH johannes;
ArrayList<FISCH> fische = new ArrayList<FISCH>();
ArrayList<FUTTER> essen = new ArrayList<FUTTER>();
PImage bg;


void setup() {
  size(800,525);
  bg = loadImage("meer.jpg");
  background(bg);

 // johannes = new FISCH();
  fische.add(new FISCH());
  fische.add(new FISCH());
}




void draw() {
  background(bg);
 // johannes.Zeichne();
 // johannes.Bewege(2);
 // johannes.moveToFood(essen);
   for (FISCH i : fische) {
      i.Zeichne();
      i.Bewege(2);
      
    }
 
  for (FUTTER i : essen) {
      i.Zeichne();
      i.Bewege();
    }
    
    try {
      for (int index = 0; index < fische.size(); index++) {
        if (fische.get(index).GetHealth() < 0) {
         fische.remove(index); 
        }
      }
    } catch (Exception e) {}

try {
  for (int index = 0; index < essen.size(); index++) {
  for (FISCH fisch : fische) {
           if (fisch.GibX() + 70 > essen.get(index).x && fisch.GibX() < essen.get(index).x + essen.get(index).breite && fisch.GibY() + 33 > essen.get(index).y && fisch.GibY() < essen.get(index).y + essen.get(index).hoehe) {
    essen.remove(index);
    fisch.AddHunger(10);
  } 
  else {
    fill(0, 255, 0);
  }
    }
    }} catch (Exception e) {}
  
}

void mousePressed() {
  essen.add(new FUTTER(mouseX, mouseY));
}
