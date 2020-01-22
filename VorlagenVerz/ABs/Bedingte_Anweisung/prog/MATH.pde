class MATH {

  MATH() {
  }

  float aufgabe1(float rechnungssumme) {
    if (rechnungssumme < 300) {
      return(0.98 * rechnungssumme);
    } else {
      return(0.95 * rechnungssumme);
    }
  }

  void aufgabe2() {
    System.out.println("Diese Methode findet die frößte der drei Zahlen und setzt diese als Variable d.");
  }

  void aufgabe3(float a, float b, float c)
  {
    if (a != 0)
    {
      float tmp = b*b - 4*a*c;   // tmp ist eine lokale Variable
      if (tmp < 0)
      {
        System.out.println("Es gibt keine Lösung.");
      } else
      {
        System.out.println("Die erste Lösung ist " + ((-b+ sqrt(tmp))/(2*a)) );
        System.out.println("Die zweite Lösung ist " + ((-b- sqrt(tmp))/(2*a)) );
      }
    } else
    {
      System.out.println("Das ist keine quadratische Gleichung.");
    }
  }

  void aufgabe4(float m, float h) {
    float bmi = m/(h*h);
    if (bmi<=19) {
      System.out.println("Untergewicht");
    } else if (19<bmi && bmi<=24) {
      System.out.println("Normalgewicht");
    } else if (24<bmi && bmi<=30) {
      System.out.println("Übergewicht");
    } else if (30<bmi && bmi<=40) {
      System.out.println("Adipositas");
    } else if (40<bmi) {
      System.out.println("schwere Adipositas");
    }
  }

  boolean aufgabe5(int jahr) {
    if ((jahr % 4) == 0) {  //https://processing.org/reference/modulo.html
      if ((jahr % 400) == 0) {  //https://processing.org/reference/modulo.html
        return true;
      } else {
        if ((jahr % 100) == 0) {  //https://processing.org/reference/modulo.html
          return false;
        }else{
          return true;
        }
      }
    } else {
      return false;
    }
  }
}
