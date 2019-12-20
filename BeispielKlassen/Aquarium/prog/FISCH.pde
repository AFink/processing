class FISCH {

  private float x;
  private float y;
  private String richtung;
  private float hunger;
  private float hunger_min;
  private float hunger_max;
  private int typ;
  private PImage tex;
  private StringList richtungen;
  private int timer;
  private int age = 0;
  private int age_max = 1000;
  private float health = 50;

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
    hunger_min = 60;
    hunger_max = 150;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
    timer = 30;
  }

  FISCH(float xneu, float yneu) {   
    x = xneu;
    y = yneu;
    richtung = "o";
    hunger = 100;
    hunger_min = 60;
    hunger_max = 150;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }
  FISCH(float xneu, float yneu, String richtungneu) {   
    x = xneu;
    y = yneu;
    richtung = richtungneu;
    hunger = 100;
    hunger_min = 60;
    hunger_max = 150;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }

  FISCH(float xneu, float yneu, String richtungneu, float hungerneu) {   
    x = xneu;
    y = yneu;
    richtung = richtungneu;
    hunger = hungerneu;
    hunger_min = 60;
    hunger_max = 150;
    typ = 1;
    tex = loadImage(str(typ) + richtung + ".png");
  }
  FISCH(float xneu, float yneu, String richtungneu, float hungerneu, int typneu) {   
    x = xneu;
    y = yneu;
    richtung = richtungneu;
    hunger = hungerneu;
    hunger_min = 60;
    hunger_max = 150;
    typ = typneu;
    tex = loadImage(str(typ) + richtung + ".png");
  }

  float GibX() {
    return x;
  }

  float GibY() {
    return y;
  }

  String GibRichtung() {
    return richtung;
  }

  float GibHunger() {
    return hunger;
  }

  int GibTyp() {
    return typ;
  }
  
  float GetHealth() {
    return health;
  }

  void SetzeX(float xneu) {
    x = xneu;
  }

  void SetzeY(float yneu) {
    y = yneu;
  }


  void SetzeRichtung(String richtungneu) {
    richtung = richtungneu;  
    tex = loadImage(str(typ) + richtung + ".png");
  }

  void SetzeRichtungRdm() {
    timer++;
    if (timer >= 1) {
      timer = 0;
      richtungen.shuffle();
      richtung = richtungen.get(1);  
      tex = loadImage(str(typ) + richtung + ".png");
    }
  }

  void SetzeHunger(float hungerneu) {
    hunger = hungerneu;
  }

  void AddHunger(float hungerneu) {
    hunger = hunger + hungerneu;
  }

  void SetzeTyp(int typneu) {
    typ = typneu;
  }

  void moveToFood(ArrayList<FUTTER> f) {
    try {
      FUTTER n = f.get(int(random(0, f.size())));
      x -= (x - n.x) * 0.1; // VECTOR MAGIC
      y -= (y - n.y) * 0.1;
    } 
    catch (Exception e) {
      return;
    }
  }

  void Bewege(int speed) {
    age++;
    if (hunger > 0) {
      //   hunger = hunger - random(0,0.01);  
      hunger = hunger - random(0, 0.1);  
      if (hunger < hunger_min || hunger < hunger_max) {
        this.moveToFood(essen);
      }
    } else {
      hunger = 0;
    }
    if (hunger < hunger_min) {
      health -= 0.01;
    }
    health += 0.001 * ((float(age_max)-float(age))/age_max);
    print("HEALTH : " + health);
    println(" AGE : " + age);
    float tmp = 1;
    if (hunger <= 100) {
      tmp = hunger /100;
    } else {
      tmp = (100 - hunger) /100;
    }



    if (richtung.contains("n")) {
      y = y - speed * tmp;
    }
    if (richtung.contains("o")) {
      x = x + speed*tmp;
    }
    if (richtung.contains("s")) {
      y = y + speed*tmp;
    }
    if (richtung.contains("w")) {
      x = x - speed*tmp;
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
    } else if (this.x <= 0) {
      this.SetzeRichtungRdm();
    } else if (this.y >= height - 70) {
      this.SetzeRichtungRdm();
    } else if (this.y <= 0) {
      this.SetzeRichtungRdm();
    }
  }

  void Zeichne() {
    image(tex, x, y);
  }
}
