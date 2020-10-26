//Amy Huang
//Block 1-2B
//Pong Project
//Oct 19 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy; //ball velocity
float ai;
boolean AI;

//sound variables
Minim minim;
AudioPlayer intro, leftpaddle, rightpaddle, wall, score, clapping;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

//colors
color pink = #F7D9F0;
color purple = #8687c1;
color blue = #7DB5EA;
color green = #78C67D;
color red = #DE5777;
color yellow = #F5F5B7;



void setup() { 
  size(800, 600);
  mode = INTRO;
  reset();

  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;

  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  ai = random(0, 600);

  //initialize score
  rightscore = leftscore = 0;
  timer = 100;

  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;

  //minim
  minim = new Minim ( this );
  minim = new Minim(this);
  intro = minim.loadFile("intro.wav");
  leftpaddle = minim.loadFile("leftpaddle.wav");
  rightpaddle = minim.loadFile("rightpaddle.wav");
  wall = minim.loadFile("wall.wav");
  score = minim.loadFile("score.wav");
  clapping = minim.loadFile("clapping.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
  }
}
