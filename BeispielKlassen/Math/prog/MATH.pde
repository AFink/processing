class MATH

{
  MATH()
  {
  }


  float BerechneRabatt(float rechnungssumme)
  {
    if (rechnungssumme < 300)
    {
      return(rechnungssumme * 0.98);
    }
    else
    {
      return(rechnungssumme * 0.95);
    }
  }


  void BerechneLoesung(float a, float b, float c) {
    if (a != 0) {
      float tmp = b * b - 4 * a * c;  //lokale variable
      if (tmp < 0){
        println("Es gibt keine Lösung");      
      } else{
        println("Die erste Lösung ist " + ((-b + sqrt(tmp))/(2*a))); 
        println("Die zweite Lösung ist " + ((-b - sqrt(tmp))/(2*a))); 
      }
    } else{
       println("Fehler, keine quadratische Gleichung!");
    }
  }
}
