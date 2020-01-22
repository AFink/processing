MATH math1;

void setup() {
  math1 = new MATH();
  println("Aufgabe 1");
  println(math1.aufgabe1(300, 20, 2004, 2008));
  println("Aufgabe 2");
  math1.aufgabe2a(200);
  math1.aufgabe2b(200);
  math1.aufgabe2c(200);
  math1.aufgabe2d(200);
  println("Aufgabe 3");
  println(math1.aufgabe3(300, 20));
  println("Aufgabe 4");
  println(math1.aufgabe4(20));


  println("Wenn Du noch Fragen hast, schick mir eine email an andreas@andreasfink.xyz");
}


void draw() {
}
