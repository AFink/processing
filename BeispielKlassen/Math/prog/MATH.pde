class MATH

{
  MATH()
  {
  }


  float BerechneRabatt(float rechnungssumme)
  {
    if(rechnungssumme < 300)
    {
      return(rechnungssumme * 0.98);
    }
    else
    {
      return(rechnungssumme * 0.95);
    }
  }
}