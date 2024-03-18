//Scene2 element
class Question_mark {
  int xPos;
  int yPos;
  float angle = random(-0.010, 0.010);
  float change = 0.0005;
  float floatVal = 1;

  PImage q;

  Question_mark(int x, int y) {
    xPos = x;
    yPos= y;
    q = loadImage("Scene2_question_mark.png");  //show question mark image when triggered
  }

  void display() {
    pushMatrix();
    translate(xPos, yPos);
    rotate(degrees(angle)); //show different angles
    image(q, 0, 0);
    popMatrix();
  }
  void rot() {
    println(angle);
    angle+=change;
    if (angle>=0.010) {  //show different angles
      change*=-1;
    } else if (angle<=-0.010) {
      change*=-1;   //this can make the question mark rotate left and right by using if 
    }
  }
}
