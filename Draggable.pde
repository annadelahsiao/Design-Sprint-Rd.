//Scene2 element
class Draggable {

  int x, y;
  //int circleSize;
  PImage magImg;

  Draggable( int _x, int _y, PImage _magImg) {
    x = _x;
    y = _y;
    magImg = _magImg;
  };
   
  void display() {
    image(magImg, x, y);
  }

  void drag() {
    //these are the conditions for dragging - the mouse must be over the object and it must be pressed
    
    if (mousePressed && mouseX>x && mouseY>y && mouseX< x+ magImg.width && mouseY < y+magImg.height) {
      println(true);
      x = mouseX-magImg.width/2;
      y = mouseY-magImg.height/2;
    }
  }
}
