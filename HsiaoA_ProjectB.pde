//Scene1 Data
PImage buttonS1on, buttonS1off;
Button_scene1 scene1_button;
PImage scene1;
PImage scene1_AnnaWalk;
PImage[] characterA1= new PImage[8];
Anna character_A1;
PImage scene1_tree;

//Scene2 Data
PImage scene2_Anna;
PImage scene2;
PImage research_on, research_off;
Draggable mag;
PImage mag_draggable_img;
int scene2_x = 680;
int scene2_y = 268;
PImage magBlock_on, magBlock_off;
MagBlockScene2 scene2_magBlock;
Button_scene2 scene2_research_off, scene2_research_on;
Question_mark [] questionMarks = new Question_mark[5];

//Scene3 Data
PImage scene3_Anna;
PImage scene3, Anna_ideationOn, Anna_ideationOff;
PImage buttons3on, buttons3off, blocks3on, blocks3off;
Button_scene3 scene3_button;
BlockS3 blocks3;

//BGM and Sound Data Import
import processing.sound.*;
SoundFile bgm;
SoundFile soundbutton;

void setup() {
  size(1920, 1080);
  //sound play when open, and keeps playing after finished.
  bgm = new SoundFile (this, "music_bgm.wav");
  bgm.loop();

  // Load the sound effect file
  soundbutton = new SoundFile(this, "button_click.wav");


  //Scene1 elements
  buttonS1on = loadImage ("start_button.png");
  buttonS1off = loadImage ("pause_button.png");
  scene1_button = new Button_scene1(buttonS1on, buttonS1off, 458, 312); /// note to self: THIS HAS TO GO AFTER THE LOADIMAGE DATA***
  scene1 = loadImage( "Scene1.jpg");
  scene1_tree= loadImage( "Scene1_tree.png");
  scene1_AnnaWalk = loadImage ("Annawalk0.png");//static image
  characterA1 [0]=loadImage("Annawalk0.png");// animation
  characterA1 [1]=loadImage("Annawalk1.png");
  characterA1 [2]=loadImage("Annawalk2.png");
  characterA1 [3]=loadImage("Annawalk3.png");
  characterA1 [4]=loadImage("Annawalk4.png");
  characterA1 [5]=loadImage("Annawalk5.png");
  characterA1 [6]=loadImage("Annawalk6.png");
  characterA1 [7]=loadImage("Annawalk7.png");
  character_A1= new Anna(characterA1, scene1_AnnaWalk, 150, 400, 400); //use "new" to create object Anna, detailed definition for variables is in class Anna
  //Anna(PImage[]_character, PImage _staticImage, int _s, int _x, int _y) {

  //Scene2 elements
  magBlock_on = loadImage("magnifyingglass_block_color.png");
  magBlock_off = loadImage("search_block_off.png");
  research_on = loadImage("Research On.png");
  research_off =loadImage("Research Off.png");
  scene2= loadImage("scene_bg.jpg");
  scene2_Anna = loadImage("Anna_Scene2.png");
  mag_draggable_img = loadImage("magnifying_glass.png");
  mag = new Draggable(1100, 500, mag_draggable_img);
  scene2_magBlock = new MagBlockScene2(magBlock_off, magBlock_on, 870, 290);
  scene2_research_off = new Button_scene2(research_off, research_on, 1050, 312);

  questionMarks [0] = new Question_mark(771, 396);
  questionMarks [1] = new Question_mark(782, 516);
  questionMarks [2] = new Question_mark(827, 658);
  questionMarks [3] = new Question_mark(1049, 401);
  questionMarks [4] = new Question_mark(1039, 588);

  //Scene3 elements
  scene3= loadImage("scene_bg.jpg");
  buttons3on= loadImage ("ideation_Off.png");
  buttons3off= loadImage ("ideation_On.png");
  blocks3on = loadImage ("Light bulb.png");
  blocks3off = loadImage ("blank block.png");
  Anna_ideationOn = loadImage ("Anna_ideation_off.png");
  Anna_ideationOff= loadImage ("Anna_ideation_on.png");
  blocks3 = new BlockS3(blocks3off, 1350, 312, Anna_ideationOff);
  scene3_button = new Button_scene3(buttons3on, buttons3off, 1650, 312, blocks3on, Anna_ideationOn);
}

void draw() {
  println(mouseX, mouseY);
  background(#ffffff);

  //Draw Scene1
  image(scene1, 58, 268);
  image(scene3, 1306, 268);
  character_A1.display();
  character_A1.walk();
  image(scene1_tree, 339, 268);
  noStroke();
  fill(255);
  rect(0, 268, 58, 555);//extension white wall to scene1 (left)
  rect(610, 268, 70, 555);//extension white wall to scene1 (right)
  image(scene2, 680, 268);
  image(scene2_Anna, 856, 400);
  scene1_button.hover();
  scene1_button.move();

  //Draw Scene2
  scene2_magBlock.blockon();
  mag.display();
  if (mouseX>scene2_x && mouseX<scene2_x+555 && mouseY>scene2_y && mouseY<scene2_y+555) { //restricts mag drag within scene 2
    mag.drag();
  }
  scene2_research_off.hover();
  scene2_research_off.move();

  //Draw Scene3
  image(scene3, 1306, 268);
  //image(scene3_Anna,1476,400);
  scene3_button.hover3();
  scene3_button.show3();
}

void mousePressed() {
  if (scene1_button.contains(mouseX, mouseY)) {
    soundbutton.play();
  }
  if (scene2_research_off.contains(mouseX, mouseY)) {
    soundbutton.play();
  }
  if (scene3_button.contains(mouseX, mouseY)) {
    soundbutton.play();
  }
}
