class FISCH {

  private int x;
  private int y;
  private String richtung;
  private int hunger;
  private int typ;
  private PImage tex;
  private StringList richtungen;

  FISCH() {   
    x = 300;
    y = 200;
    richtungen = new StringList();
    richtungen.append("n");
    richtungen.append("no");
    richtungen.append("o");
    richtungen.append("so");
    richtungen.append("s");
    richtungen.append("sw");
    richtungen.append("w");
    richtungen.append("nw");
    richtung = "sw";
    hunger = 100;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }

  FISCH(int xneu, int yneu) {   
    x = xneu;
    y = yneu;
    richtung = "o";
    hunger = 100;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }
  FISCH(int xneu, int yneu, String richtungneu) {   
    x = xneu;
    y = yneu;
    richtung = richtungneu;
    hunger = 100;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }

  FISCH(int xneu, int yneu, String richtungneu, int hungerneu) {   
    x = xneu;
    y = yneu;
    richtung = richtungneu;
    hunger = hungerneu;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }
  FISCH(int xneu, int yneu, String richtungneu, int hungerneu, int typneu) {   
    x = xneu;
    y = yneu;
    richtung = richtungneu;
    hunger = hungerneu;
    typ = typneu;
    tex = loadImage(str(typ) + richtung + ".png");
  }
  
  int GibX(){
    return x;
    }
  
  int GibY(){
    return y;
  }
  
  String GibRichtung(){
    return richtung;
  }
  
  int GibHunger(){
    return hunger;
  }
  
  int GibTyp(){
    return typ;
  }
  
  void SetzeX(int xneu){
    x = xneu;
  }

    void SetzeY(int yneu){
    y = yneu;
  }
 
  
  void SetzeRichtung(String richtungneu) {
    richtung = richtungneu;  
    tex = loadImage(str(typ) + richtung + ".png");
  }
  
    void SetzeRichtungRdm() {
    richtungen.shuffle();
    richtung = richtungen.get(1);  
    tex = loadImage(str(typ) + richtung + ".png");
  }
  
  void SetzeHunger(int hungerneu){
  hunger = hungerneu;  
  }
  
  void SetzeTyp(int typneu){
    typ = typneu;
  }
  
  void moveToFood(ArrayList<FUTTER> f) {
    try {
      FUTTER n = f.get(0);
      x -= (x - n.x) * 0.1; // VECTOR MAGIC
      y -= (y - n.y) * 0.1;
    } catch (Exception e) {
      return;
    }
  }

  void Bewege(int speed) {
    if (richtung.contains("n")) {
      y = y - speed;
    }
    if (richtung.contains("o")) {
      x = x + speed;
    }
    if (richtung.contains("s")) {
      y = y + speed;
    }
    if (richtung.contains("w")) {
      x = x - speed;
    } 
    
   /* 
   if (this.x > width - 35) {
      this.SetzeRichtung("w");
    }else if (this.x < 35) {
      this.SetzeRichtung("o");
    }else if (this.y > height - 35) {
      this.SetzeRichtung("n");
    }else if (this.y < 35) {
      this.SetzeRichtung("s");
    }  */
   
    if (this.x >= width - 70) {
      this.SetzeRichtungRdm();
    }else if (this.x <= 0) {
      this.SetzeRichtungRdm();
    }else if (this.y >= height - 70) {
      this.SetzeRichtungRdm();
    }else if (this.y <= 0) {
      this.SetzeRichtungRdm();
    } 
  }

  void Zeichne() {
    image(tex, x, y);
  }
}