SPIEGELEI hans;

void setup()
{
  size(600, 600);
  hans = new SPIEGELEI();
}

void draw()
{
  hans.Zeichne();
  println(hans.Gibx());    //wenn in der Angebe steht X vom Spiegelei in die Console schreiben
}
