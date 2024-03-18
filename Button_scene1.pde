//This class defines the start button in Scene1
//It will trigger a move and hover function when the mouse is pressed
//boolean true or false statement button= true;

class Button_scene1 {
  PImage buttonOn;
  PImage buttonOff;
  float x, y, currentFrame;
  boolean mouseAction, mouseReleased, contains;
  
//constructor
  Button_scene1(PImage _buttonOn, PImage _buttonOff, float _x, float _y)
  {
    buttonOn = _buttonOn;
    buttonOff =  _buttonOff;
    x = _x;
    y = _y;
    mouseAction = false; //start with showing "start" button - state is off, mouseReleased = true
  }
   //if mouse x,y is within the button width
  boolean contains(float b1x, float b1y) {
    if (dist(b1x, b1y, x, y) < buttonOn.width) {
      return true;
    } else {
      return false;
    }
  }

  void hover() {
    if (!mousePressed) {
      mouseReleased = true;
    }
    if (mouseX > x  && mouseX <  x + buttonOn.width && mouseY > y  && mouseY < y + buttonOn.height) {
      cursor(HAND);//show hand cursor when the mouse is hovered to the button

      if (mouseReleased && mousePressed) {
        mouseAction = !mouseAction; //! meaning invert true and false
        mouseReleased = false;
      }
    } else {
      cursor(ARROW);
    }
  }

  void move() {
    currentFrame = character_A1.step;       
    if (mouseAction) {
      image(buttonOff, x, y);
      character_A1.speed =-2;          //Make Anna walk in negative value so that she can keeps walking towards left
    } else {
      image(buttonOn, x, y);

      character_A1.speed =0; //set character speed to zero
      character_A1.t.savedTime= millis();
    }
  }
}
