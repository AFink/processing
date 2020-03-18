class FISCHFELD 
{
     FISCH [] feld;
     int anzahl;
     
     FISCHFELD()
     {
       
       feld = new FISCH [50];
       int auswahl =0;
       int auswahl2 = 0;
       for (int i=0;i< feld.length;i++)     // statt 100 koennte feld.length verwendet werden; in diesem Attribut wird automatisch
                                    // die Groesse des Feldes gespeichert.
       {
         auswahl = (int) random(2);
         if (auswahl == 0)
         {
                 auswahl2 = (int) random(2);
         if (auswahl2 == 0)
         {
                 feld[i]  = new ZITRONE(random(0,600),random(0,200));           // dieser Wert 100 hat mit obigem Wert nichts zu tun, das ist nur die
                              // x-Koordinate des erzeugten Fisches
         }
         else 
         {
           feld[i]  = new HERING(random(0,600),random(0,height/3));           // dieser Wert 100 hat mit obigem Wert nichts zu tun, das ist nur die
                              // x-Koordinate des erzeugten Fisches
         }
         }
         else 
         {
           feld[i]  = new FISCH(random(0,600),random(0,200));           // dieser Wert 100 hat mit obigem Wert nichts zu tun, das ist nur die
                              // x-Koordinate des erzeugten Fisches
         }
       }
       anzahl = feld.length;
     }
  
  
  
   void ZeichneAlles()
   {
     
  for (int i=0;i< anzahl;i++)           // Hier koennte auch eine kleiner Zahl als 100 stehen, wenn ich zu Testzwecken nicht
                 // so viele Fische zeichnen lassen moechte; auch feld.length waere moeglich
       {
         
         feld[i].ZeichneFisch();
       }
   }
  
  
  void BewegeAlles()
   {
     
  for (int i=0;i< anzahl;i++)               // wie oben
       {
         
         feld[i].Bewege(1);
       }
   }
  
  void Loesche(int i)
  {
    if (i < 0 || i >= anzahl)
    {
      System.out.println("Fehler beim Löschen");
    }
    else
    {
      feld[i] = feld[anzahl-1];
      feld[anzahl-1] = null;
      anzahl = anzahl-1;
    }
      
    
  }
  
  
  
  
    int     GibAnzahl()
    {
        return anzahl;
    }
  
  
  
  
  
  
  
  
}
