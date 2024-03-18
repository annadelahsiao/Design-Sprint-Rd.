//This class defines the button in Scene3
//the ideation button will have a static image and will trigger a function when the mouse is pressed
class Button_scene3 {
  PImage ideationOn;
  PImage ideationOff;
  PImage buttons3off;
  PImage Anna_On;
  float x, y;
  boolean mouse3Action, mouse3Released, contains;
  
  //Pass in the images and postition for each object using the constructor
  Button_scene3(PImage _ideationOn, PImage _ideationOff, float _x, float _y, PImage _buttons3off, PImage _Anna_On)
  {
    ideationOn = _ideationOn;
    ideationOff =  _ideationOff;
    Anna_On=_Anna_On;
    x = _x;
    y = _y;
    buttons3off = _buttons3off;
    mouse3Action = false;
  }
  
    //if mouse x,y is within the button width
  boolean contains(float b3x, float b3y) {
    if (dist(b3x, b3y, x, y) < ideationOn.width) {
      return true;
    } else {
      return false;
    }
  }

  //Determine what to show for each object

  void hover3() {
    //show the hand cursor and the over image when the mouse is over the object
      //whe the mouse is pressed show the meter image
      //if (mousePressed) {
        if (!mousePressed) {
      mouse3Released = true;
        }
        if (mouseX > x - ideationOn.width && mouseX <  x + ideationOn.width && mouseY > y - ideationOn.height && mouseY < y + ideationOn.height) {
      cursor(HAND);//show hand cursor when the mouse is hovered to the button
         if (mouse3Released && mousePressed) {
      mouse3Action =! mouse3Action; 
      mouse3Released = false;
    }
}
      }
      void show3(){
        if (mouse3Action) {
        image(ideationOff, x, y);
        blocks3.Img_blocks3(buttons3off, Anna_ideationOff);
      } else {
      //this will be shown when the mouse is not over the image
      cursor(ARROW);
      image(ideationOn, x, y);
      image(Anna_ideationOn,1476,400);
      image(blocks3off, 1350, 312);
    }
  }
}
