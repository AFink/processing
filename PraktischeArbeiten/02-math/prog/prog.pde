// fast Musterlösung, MATHE.pde beachten :3
MATHE andi;


void setup()
{
  size(100, 100);
  System.out.println("Das ist die erste Ausgabe im Programm.");
  andi = new MATHE();
  andi.BerechneQuadrat(11);
  andi.SchreibeBetragVon(-10);
  //  System.out.println(andi.GibBetragVon(-200));
  andi.BestimmeKategorie(23);
  System.out.println(andi.BerechnePreis(14, 200.0));
  //  System.out.println(andi.BerechnePreis2(70,200.0,1));
}

void draw()
{
}

