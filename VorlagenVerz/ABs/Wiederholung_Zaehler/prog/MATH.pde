class MATH {

  MATH() {
  }

  float aufgabe1(float kapital, float p, int start, int ziel) {
    if (start < ziel) { //prüfen ob Jahr > 0 ist
      float tmp = kapital;
      int anzahl = ziel - start;
      float wachstum = 1 + (p / 100);

      for (int i = 0; i < anzahl; i++) {
        tmp = tmp * wachstum;
      }
      return tmp;
    } else {
      System.out.println("Das Ziehljahr muss größer als das Startjahr sein!");  
      return 0; // optional
    }
  }


  float aufgabe2a(int anzahl) { //man kann auch int überall nehmen, float ist einfacher zu kopieren :D
    if (0 < anzahl) { //prüfen ob anzahl > 0 ist
      float tmp = 0;
      for (int i = 0; i < anzahl; i++) {
        tmp = tmp + i;
      }
      return tmp;
    } else {
      System.out.println("Die anzahl muss größer als 0 sein!");  
      return 0; // optional
    }
  }

  float aufgabe2b(int anzahl) { //man kann auch int überall nehmen, float ist einfacher zu kopieren :D
    if (0 < anzahl) { //prüfen ob anzahl > 0 ist
      float tmp = 0;
      for (int i = 0; i < anzahl; i++) {
        tmp = tmp + i * i;
      }
      return tmp;
    } else {
      System.out.println("Die anzahl muss größer als 0 sein!");  
      return 0; // optional
    }
  }

  float aufgabe2c(int anzahl) { //man kann auch int überall nehmen, float ist einfacher zu kopieren :D
    if (0 < anzahl) { //prüfen ob anzahl > 0 ist
      float tmp = 0;
      for (int i = 0; i < anzahl; i++) {
        tmp = tmp + i*i*i;
      }
      return tmp;
    } else {
      System.out.println("Die anzahl muss größer als 0 sein!");  
      return 0; // optional
    }
  }
  float aufgabe2d(int anzahl) { //man kann auch int überall nehmen, float ist einfacher zu kopieren :D
    if (0 < anzahl) { //prüfen ob anzahl > 0 ist
      float tmp = 0;
      for (int i = 0; i < anzahl; i++) {
        tmp = tmp + 1/i; //hatte Fehler beim testen, soööte eig so stimmen ^^
      }
      return tmp;
    } else {
      System.out.println("Die anzahl muss größer als 0 sein!");  
      return 0; // optional
    }
  }

  float aufgabe3(float basis, int exponent) {  //fouble hatte ein paar Probleme, deswegen float
    float tmp = basis;
    if (exponent >= 0) { //prüfen ob Jahr > 0 ist
      for (int i = 0; i < exponent; i++) {
        tmp = tmp * basis;
      }
    } else {
      for (int i = 0; i < (exponent * (-1)); i++) {
        tmp = tmp / basis;
      }
    }
    return tmp;
  }


  int aufgabe4(int n) {  //fouble hatte ein paar Probleme, deswegen float
    if (0 < n) { //prüfen ob n > 0 ist
      int tmp = 1;
      for (int i = 0; i < n; i++) {
        tmp = tmp * i;
      }
      return tmp;
    } else {
      System.out.println("n muss größer als 0 sein!");  
      return 0; // optional
    }
  }
}
