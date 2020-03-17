// Das soll die Klasse FUTTER werden.
// Hier sollte sicher einiges stehen.
// Schreiben Sie u.a. zum Darstellen eines Futterstuecks eine passende
// Methode, die ein Futterstueck als Ellipse zeichnet. Verwenden Sie in 
// dieser Methode als Zeichenbefehl eine angepasste Anweisung
// der Form ellipse(x,y,breite,hoehe)



class FUTTER
{
  int x;
  int y;
  
  FUTTER(int xNeu)
  {
     y = 50;                 // die y-Koordinate eines erzeugten Futterobjekts ist 50 (oben im Zeichenfenster)
     x = xNeu;               // die x-Koordinate kann mit Hilfe des Parameters bei Aufruf eingegeben werden
  }
  
  
  void Zeichne()
  {
    ellipse(x,y,10,10);             // Jeder Futterbrocken hat den Durchmesser 10 Pixel
  }
}
