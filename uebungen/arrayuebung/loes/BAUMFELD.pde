class BAUMFELD {
  BAUM[] wald;  

  BAUMFELD() {
    wald = new BAUM[100];

    for (int i = 0; i < 100; i++) {
      //wald[i] = new BAUM(50,10 * i);  //vllt so
      wald[i] = new BAUM(random(0, width), random(0, height));  //so ist schöner zum anzeigen
    }
  }

void ZeichneAlles(){
      for (int i = 0; i < 100; i++) {
      wald[i].Zeichne();
    }
}

void BewegeAlles(){
      for (int i = 0; i < 100; i++) {
      wald[i].Bewege();
    }
}
}
