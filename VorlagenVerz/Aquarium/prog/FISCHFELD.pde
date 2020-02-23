class FISCHFELD {

  FISCH [] feld;  //DEKLARATION ungleich ERZEUGUNG (hier keine Anzahl der Felder!)

  int anzahl;

  FISCHFELD() {
    //    feld = new FISCH();  FALSCH! WÄRE NUR EINER!!
    //    feld = new FISCH [];  FALSCH! KEINE ANZAHL ANGEGBEN

    feld = new FISCH [100];  // Speicher mit 100 Fischen
    for (int i=0; i < feld.length; i++) {
      feld[i] = new FISCH (1, 100+ i*10);   //rdm weil sonst wäre alle aufeinander   // AN DIESER sTELLE BEACCHTEN, DASS DER kONSTRUKTOR MIT ZWEI PARAMETERN AUFGERUFEN WIRD, D.H. EIN STRICHPUNKT MUSS ZWISCHEN DEN EIN
    }
    anzahl = feld.length;
  }

  void LoescheFisch(int i) {
    
    if (i <= -1 || i >= (feld.length - 1)) {  //i überprüfen
      println("wrong index");
    } else {
      if (feld[i] == null) {  // wenn Feld schon leer
        println("Feld ist schon gelöscht!");
      } else {  //wenn Feld voll
        if (i == (anzahl - 1)) {  // wenn der letzte Fisch gelöscht werden soll, dann nicht ersetzen sondern gleich null setzen
          feld[i] = null;

          anzahl = anzahl-1;
        } else {  //sonst ganz normal Fisch überschreiben.
          feld[i] = feld[anzahl-1];

          feld[anzahl-1] = null;

          anzahl = anzahl-1;
        }
      }
    }
  }


  void BewegeAlles() {

    for (int i=0; i < anzahl; i++) {
      feld[i].Bewege(1);
    }
  }

  void ZeichneAlles() {

    for (int i=0; i < anzahl; i++) {
      feld[i].ZeichneFisch();
    }
  }
}
