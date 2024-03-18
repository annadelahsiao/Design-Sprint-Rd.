//This class defines the buttons in Scene2
//the research button will trigger a function when the mouse is pressed
//boolean true or false statement button= true;
class Button_scene2 {
  PImage buttonOn;
  PImage buttonOff;
  int x, y;
  boolean mouseAction, mouseReleased, contains;

  Button_scene2(PImage _buttonOn, PImage _buttonOff, int _x, int _y)
  {
    buttonOn = _buttonOn;
    buttonOff =  _buttonOff;
    x = _x;
    y = _y;

    mouseAction = false; //start with showing "start" button - state is off, mouseReleased = true
  }
  
  //if mouse x,y is within the button width
  boolean contains(float b2x, float b2y) {
    if (dist(b2x, b2y, x, y) < buttonOn.width) {
      return true;
    } else {
      return false;
    }
  }

  void hover() {
    if (!mousePressed) {
      mouseReleased = true;
    }
    if (mouseX > x  && mouseX <  x + buttonOn.width && mouseY > y && mouseY < y + buttonOn.height) {
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
    if (mouseAction) {
      image(buttonOff, x, y);
        for(int i=0; i<questionMarks.length; i++){
    questionMarks[i].display(); //show question marks
    questionMarks[i].rot(); //let question mark float
  }

    } else {
      image(buttonOn, x, y); //if not showing, display the other button image

    }
  }
}
