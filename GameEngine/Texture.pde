// Loading Textures
class Texture {
  
  private PImage tex;
 
 Texture(String name) {
   tex = loadImage(name);
 }
  
 void draw(float x, float y) {
  image(tex, x, y);
 }
  
}
