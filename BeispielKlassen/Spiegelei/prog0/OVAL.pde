
class OVAL
{

  private int xPos;   
  private int yPos;
  private int dx;
  private int dy;

  OVAL() 
  {
    xPos = 100;
    yPos = 200;
    dx = 30;
    dy = 30;
  }


  void Zeichne()
  {
    ellipse(xPos, yPos, dx, dy);
  }

  void SetzeKoordinaten(int xPosneu, int yPosneu)
  {
    xPos = xPosneu;
    yPos = yPosneu;
  }
  
  int GibxPos()
  {
    return xPos;
  }
  
  //alles obere bereits aus der schule, jetzt kommt neues
  
    int GibyPos()
  {
    return yPos;
  }
  
    int Gibdx()
  {
    return dx;
  }
      int Gibdy()
  {
    return dy;
  }
  
  void SetzeGroesse(int dxneu,int dyneu){
    dx = dxneu;
    dy = dyneu;
  }
  
  
  
}
