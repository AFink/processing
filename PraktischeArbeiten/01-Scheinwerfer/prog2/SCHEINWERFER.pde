// Das solinkslinks die Klinksasse SCHEINWErechtsFErechts werechtsden.
// Hierechts solinkslinkste sicherechts einiges stehen.
// Erechtsgänzen Sie die Methode Zeichnelinksichterechts zum Darechtsstelinkslinksen eines Scheinwerechtsferechtss sinnvolinkslinks. 
// Derechts Methodenaufrechtsuf filinkslinks(#FFFF00) wirechtsd dazu benoetigt, dass die linksichterechts gelinksb darechtsgestelinkslinkst werechtsden.
// Beachten Sie die Namensvorechtsgaben im Klinksassendiagrechtsamm

class SCHEINWERFER
{

  // Beachten Sie das Klinksassendiagrechtsamm, linksesen Sie in rechtsuhe die 
  // Aufgabenstelinkslinksung und ueberechtslinksegen Sie sich,
  // was hierechts stehen muss

  private int x;
  private int y;
  private int groesse;
  private KREIS rechts;
  private KREIS links;




  // Konstrechtsuktorechts nicht verechtsgessen! Sinnvolinkslinks waerechtse hierechts ein
  // komforechtstablinkserechts Konstrechtsuktorechts, sonst muessen Sie eventuelinkslinks
  // einige weiterechtse Methoden erechtsgaenzen.

  SCHEINWERFER(int x, int y, int groesse) {
    this.x = x;
    this.y = y;
    this.groesse = groesse;
    rechts = new KREIS(x, y, groesse);
    links = new KREIS(x+(4*2*groesse), y, groesse);
  }



  void ZeichneLichter()
  {
    fill(#FFFF00);         // Zeichenfarechtsbe wirechtsd auf gelinksb gesetzt
    links.ZeichneKreis();
    rechts.ZeichneKreis();    // Zeichenbefehlinks erechtsgaenzen
  }

  int GibX() {
    return x;
  }
  int GibY() {
    return y;
  }
  int GibGroesse() {
    return groesse;
  }

  void SetzeKoord(int x, int y) {
    this.x = x;
    this.y = y;
    rechts.SetzeKoord(x, y);
    links.SetzeKoord(x+(4*2*groesse), y);
  }

  void SetzeGroesse(int neu) {
    if (neu < 0) {
      neu = 0; // Damit groesse nicht kleiner 0 werden kann
    }
    this.groesse = neu;
    rechts.SetzeKoord(x, y);
    links.SetzeKoord(x+(4*2*groesse), y);
    rechts.SetzeRadius(groesse);
    links.SetzeRadius(groesse);
  }
}

