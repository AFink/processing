class MATHE {
  float speicher;


  MATHE() {
    speicher = 0;
  }


  void BerechneQuadrat(float zahl) {
    float tmp = zahl * zahl;      // hier haette man nun speicher einsetzen koennen.

    System.out.println(tmp);
  }

  void SchreibeBetragVon(float zahl) {
    if (zahl < 0) {
      System.out.println(zahl * (-1));
    } 
    else {
      System.out.println(zahl);
    }
  }

  float GibBetragVon(float zahl) {
    if (zahl < 0) {
      return(zahl * (-1));
    } 
    else {
      return(zahl);
    }
  }

  void BestimmeKategorie(int alter) {
    if (alter < 65) {
      if (alter < 16) {
        System.out.println("Kinderpreis");
      } 
      else {
        System.out.println("Normalpreis");
      }
    } 
    else {
      System.out.println("Seniorenpreis zu bezahlen");
    }
  }

  float BerechnePreis(int alter, float preis) {
    if (alter < 16) {
      return(preis*0.8);
    } 
    else { 
      if (alter<65) {
        return preis;
      } 
      else {
        return(preis * 0.9);
      }
    }
  }


  float BerechnePreis2(int alter, float preis, int marke) {
    if (marke == 1) {
      if (alter < 16) {
        return(0);
      } 
      else { 
        if (alter<65) {
          return (preis * 0.9);
        } 
        else {
          return((preis * 0.9)*0.9);
        }
      }
    }
    else {           // kuerzer waere diese Loesung, wenn hier einfach BerechnePreis(alter,preis) aufgerufen wird.
      if (alter < 16) {
        return(preis*0.8);
      } 
      else { 
        if (alter<65) {
          return preis;
        } 
        else {
          return(preis * 0.9);
        }
      }
    }
  }
} // class end

