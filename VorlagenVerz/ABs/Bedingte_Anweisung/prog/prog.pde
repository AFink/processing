MATH math1;

void setup() {
  math1 = new MATH();
  println("Aufgabe 1");
  println(math1.aufgabe1(300));
    println("Aufgabe 2");
  math1.aufgabe2();
    println("Aufgabe 3");
  math1.aufgabe3(1,2,3);
    println("Aufgabe 4");
  math1.aufgabe4(65.00,1.65);
  println("Aufgabe 5");
  if (math1.aufgabe5(2005/*Jahr*/) == true) {
    System.out.println("Schaltjahr");
  } else {
    System.out.println("kein Schaltjahr");
  }
  
  
  println("Wenn Du noch Fragen hast, schick mir eine email an andreas@andreasfink.xyz");
}


void draw() {
}
