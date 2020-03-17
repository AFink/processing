/* @pjs preload="fisch.png"; */


FISCHFELD schwarm;
FUTTERFELD a;

void setup()
{
    size(800,525);
    background(#00BFFF);
   
    schwarm = new FISCHFELD();
    a = new FUTTERFELD(20);  
    
    
     
}


void draw()
{
  background(#00BFFF);
 
  schwarm.ZeichneAlles();
  schwarm.BewegeAlles();
  a.ZeichneAllesFutter(20);  // Hier muss nun leider derselbe Wert wie oben eingetragen werden. Idealerweise
                            // sollte hier keine Zahl stehen; dazu waere eine kleine Aenderung in FUTTERFELD noetig:
                            // wir muessten in FUTTERFELD die Anzahl der eingetragenen Elemente in einem Attribut speichern
                            // oder das von Processing zur Verfuegung gestellte Attribut length (gibt die maximale Elementanzahl
                            // in einem Feld an) verwenden
  
 if (keyPressed == true)
  {
    if (key == 'x')
    {
      schwarm.Loesche((int) random(schwarm.GibAnzahl()));
      keyPressed = false;
    }
  }
}



