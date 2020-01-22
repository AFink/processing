class FISCHFELD {
  
  FISCH [] feld;  //DEKLARATION ungleich ERZEUGUNG (hier keine Anzahl der Felder!)
  
  FISCHFELD() {
//    feld = new FISCH();  FALSCH! WÄRE NUR EINER!!
//    feld = new FISCH [];  FALSCH! KEINE ANZAHL ANGEGBEN

    feld = new FISCH [100];  // Speicher mit 100 Fischen
  
    for (int i=0;i < 99; i++){
      feld[i] = new FISCH(100,50+ i*10);   //rdm weil sonst wäre alle aufeinander
    }
  }



  void ZeichneAlles() {
 
    for (int i=0;i < 99; i++){
      feld[i].ZeichneFisch();   //rdm weil sonst wäre alle aufeinander
    }
 
  }
  
  
    void BewegeAlles() {
 
    for (int i=0;i < 99; i++){
      feld[i].Bewege(1);   //rdm weil sonst wäre alle aufeinander
    }
 
  }
}
