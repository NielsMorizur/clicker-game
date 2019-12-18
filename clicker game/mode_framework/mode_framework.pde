import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//minim variables
Minim minim; //toolbox of functions
AudioPlayer bump, coin, theme, gameover;  //individual sound finder

// mode variables
int mode;
final int INTRO = 0;
final int OPTIONS = 4;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

int target;
int sliderX;

float targetRadius;
int choose1,choose2,choose3,choose4,choose5,choose6;

float scoreText;

int highScore;

//target
float x, y, vx, vy;

int score, lives;

void setup() {
  
  x=400;//target
  y=400;//target
  vx=4;
  vy=-4;
  score=0;
  lives=3;
  highScore = 0;
  target = 1;
  sliderX = 400;
  targetRadius = 100;
  scoreText = 42;
  
  choose1 = 400;
  choose2 = 300;
  choose3 = 370;
  choose4 = 260;
  choose5 = 430;
  choose6 = 260;
  
  size(800,800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
 // rectMode(CENTER);          //drawing rect from middle like ellipse

  //loading sound files
minim = new Minim(this);  //activates library
coin = minim.loadFile("coin.wav");
bump = minim.loadFile("bump.wav");
theme = minim.loadFile("mario bros theme.mp3");
gameover = minim.loadFile("gameover.wav");
  
}

void draw(){
  if (mode == INTRO) {
    intro();
  }else if (mode == OPTIONS) {
    options();
  }else if (mode == GAME) {
    game();
  }else if (mode == PAUSE) {
    pause();
  }else if (mode == GAMEOVER) {
    gameover();
  }else {
    println("Error: Mode = " + mode);
  } 
  
}
