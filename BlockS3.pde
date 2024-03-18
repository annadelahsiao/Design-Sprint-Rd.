//Scene3 element
class BlockS3 {
  PImage blocks3Off;
  PImage Anna_On;
  int x, y;
  
  BlockS3(PImage _blocks3Off, int _x, int _y, PImage _Anna_On) {
    blocks3Off = _blocks3Off;
    Anna_On = _Anna_On;
    x = _x;
    y = _y;
  }
  //Change the reading of the meter when mouse is over and pressed within each object
  void Img_blocks3(PImage img, PImage Anna) {
    image(img, 1350, 312); //same x,y as the light in button scene3
    image(Anna, 1476,400);
  }
}
