MATH marco;

void setup() {
  size(200, 200);
background(#AABBCC);
  marco = new MATH();

 println(marco.BerechneRabatt(400));
 marco.BerechneLoesung(10,20,30);
 marco.BerechneBMI(65,1.65);
}


void draw() {
}