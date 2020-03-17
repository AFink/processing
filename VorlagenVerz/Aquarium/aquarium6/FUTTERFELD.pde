class FUTTERFELD
{
  FUTTER [] brocken;
  
  FUTTERFELD(int anzahl)            // damit kann an der Stelle, an der ein solches Feld erzeugt wird, festgelegt werden,
                                    // wie viele Futterbrocken im Feld sein sollen
  {
    
       brocken = new FUTTER [anzahl];
       
       for (int i = 0; i < anzahl; i++)
       {
         brocken[i] = new FUTTER((int) random(0,600));     // die Werte fuer die x-Koordinate im Konstruktor FUTTER sind 0, 30, 60, 90, ...
       }
  }
  
  void ZeichneAllesFutter(int anzahl)    // dieser Parameter sollte besser weggelassen werden, da er den selben Wert haben sollte
            // wie beim Konstruktor; dazu muss dann in der Wiederholung statt anzahl brocken.length verwendet werden.
  {
    for (int i = 0; i< anzahl; i++)
    {
      brocken[i].Zeichne();
    }
  }
  
  
  
  
}
