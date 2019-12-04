// Das hier soll das Hauptprogramm sein. Sie muessen hier passende
// Anweisungen, Deklarationen, ... ergaenzen.

// Beachten Sie das Klassendiagramm. 

SCHEINWERFER lights;
SCHEINWERFER out;

void setup()
{
  size(1280, 720);
  background(#000080);  // der Hintergrund soll dunkel sein
  //frameRate(10); // Damit man besser sehen kann was passiert

  lights = new SCHEINWERFER(100, 100, 50);
  out = new SCHEINWERFER(width/2-400, height/2, 50);
}


void draw()
{
  background(#000080);        // fuer spaeter, wenn sich was bewegt.

  // Bewegungen

  lights.SetzeKoord(lights.GibX()+1, lights.GibY());
  out.SetzeGroesse(out.GibGroesse()+1);

  // Zeichnen

  lights.ZeichneLichter();
  out.ZeichneLichter();
}

