//This class defines the magnifying block in Scene2
//the research button will trigger drag function when the mouse is hover to the block, change image color
//boolean true or false statement button= true;
class MagBlockScene2 {
  PImage blockOn;
  PImage blockOff;
  int x, y, currentFrame;
  boolean mouseAction, mouseReleased;

  MagBlockScene2(PImage _blockOn, PImage _blockOff, int _x, int _y)
  {
    blockOn = _blockOn;
    blockOff = _blockOff;
    x = _x;
    y = _y;

    mouseAction = false; //start with showing "start" button - state is off, mouseReleased = true
  }

  void blockon() {
    if (!mousePressed) {
      mouseReleased = true;
    }
    if (((mag.x>x || mag.x+74>x) && mag.x<x+74)&&((mag.y>y || mag.y+71>y) && mag.y<y+71) ) {
      cursor(HAND);//show hand cursor when the mouse is hovered to the button

      //if (mouseReleased && mousePressed) {
      //mouseAction = !mouseAction; //! meaning invert true and false
      //mouseReleased = false;
      //}
      image(blockOff, x, y);
    } else {
      cursor(ARROW);
      image(blockOn, x, y);
    }
  }
}
