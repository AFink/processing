class SPIEGELEI
{

  private int x;
  private int y;
  private OVAL eiklar;
  private OVAL eigelb;

  SPIEGELEI()
  {
    x = 100;
    y = 100;
    eiklar = new OVAL();
    eiklar.SetzeKoordinaten(x ,y); //bisher wird Eiklar und eigelb an den Koordinaten, die im Konstruktor von OVAL angegeben sind konstruiert. dies ändern wir dadurch, indem wir die oben angegegbenen Werte einsetzen.
    eiklar.SetzeGroesse(70,50);
    eigelb = new OVAL(); // Wir haben on OVAL angegeben, ein OVAL soll 30*30 groß sein, somit ändern wir nur die Größe des Eiklar.
    eigelb.SetzeKoordinaten(x ,y); //-> Z.14
   // eigelb.SetzeKoordinaten(x - 20, y); // wenn in der Angabe steht EIgelb soll versetzt sein vom mittelpunkt des eiweiß
    
  }
  
  int Gibx(){    //wenn Frau Wedel Gibmethoden haben will -> Vorlage (statt VARIABLE die gewünschte Variable einsetzen und statt DATENTYP den jeweiligen Datentyp der Variable(int,loolean,String,etc.))  DATENTYP GibVARIABLE(){return VARIABLE;}
    return x;
  }
    int Giby(){
    return y;
  }
  
  void Zeichne()
  {
    fill(255,255,255);    //wir wollen das Eiklar jedes mal weiß haben
    eiklar.Zeichne();
    fill(255,255,0);      //und das eiGELB gelb ;)
    eigelb.Zeichne();
  }
}
