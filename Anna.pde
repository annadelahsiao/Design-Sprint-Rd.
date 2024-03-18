//Scene1 element
class Anna {
  PImage[]character;
  PImage staticImage;
  int step=0;
  Timer t;
  int totalframes;
  int x, y;
  int w, h;
  int speed = 0;
  //int walk_x=width;

  //constructor
  //1.character Anna: load animation image, static image no press, timer, location x,y,and image height
  Anna(PImage[]_character, PImage _staticImage, int _s, int _x, int _y) {
    character=_character;
    t=new Timer(_s);
    totalframes= character.length;
    x = _x;
    y = _y;
    staticImage = _staticImage;
  }

  //2.display functions
  void display() {

    //if (mousePressed && mouseX > x && mouseX<x+w && mouseY > y && mouseY<y+h ) {

    //position of the image and the sequence
    image(character[step], x, y);

    //when time or speed finished go to next frame in sequence
    if (t.isFinished()) {
      t.start();
      println(step);
      //use modulo % (remainers) to restrict the value of step from 0 to totalframes-1
      step=(step+1)%totalframes;
    }
  }

  //3.walk speed function
  void walk() {
    x= x + speed;
    if (x < 0) {  //If the Anna reaches the edge, let her return to the Scene1 right width
      x=(500);
    }
  }
}
