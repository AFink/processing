class FISCHFELD {

  FISCH [] feld;  //DEKLARATION ungleich ERZEUGUNG (hier keine Anzahl der Felder!)

  FISCHFELD() {
    //    feld = new FISCH();  FALSCH! WÄRE NUR EINER!!
    //    feld = new FISCH [];  FALSCH! KEINE ANZAHL ANGEGBEN

    feld = new FISCH [100];  // Speicher mit 100 Fischen

    for (int i=0;i < 99; i++) {
      feld[i] = new FISCH (1, 100+ i*10);   //rdm weil sonst wäre alle aufeinander   // AN DIESER sTELLE BEACCHTEN, DASS DER kONSTRUKTOR MIT ZWEI PARAMETERN AUFGERUFEN WIRD, D.H. EIN STRICHPUNKT MUSS ZWISCHEN DEN EIN
    }
  }



  void ZeichneAlles() {

    for (int i=0;i < 99; i++) {
      feld[i].ZeichneFisch();
    }
  }


  void BewegeAlles() {

    for (int i=0;i < 99; i++) {
      feld[i].Bewege(1);
    }
  }
}
