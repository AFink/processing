class MATH
{
  
  MATH()
  {
  }
  
  void BerechneLoesung(float a, float b, float c)
  {
    if (a != 0)
    {
      float tmp = b*b - 4*a*c;   // tmp ist eine lokale Variable
      if (tmp < 0)
      {
        System.out.println("Es gibt keine Lösung.");
      }
      else
      {
        System.out.println("Die erste Lösung ist " + ((-b+ sqrt(tmp))/(2*a)) );
        System.out.println("Die zweite Lösung ist " + ((-b- sqrt(tmp))/(2*a)) );
      }
    }
    else
    {
      System.out.println("Das ist keine quadratische Gleichung.");
    }
  }
  
}
        
      
