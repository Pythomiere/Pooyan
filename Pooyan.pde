import processing.javafx.*;

// import music tool
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import processing.sound.*;

// music library
Minim minim;
// ingame themes
AudioPlayer theme, correctsound, wrongsound, arrowingsound, arrowoutsound;
// other themes
AudioPlayer introtheme, wintheme, losetheme;
// other sounds
AudioPlayer gunshotsound, gamestartsound, welcomesound, winsound, losesound;

// Fonts
PFont pixel;
PFont P5;

// gifs
int numframes = 89;
PImage[] introgif = new PImage[numframes];
PImage[] ugif = new PImage[2];

// color
color[] colors = {
  #646464,
  #899DCE,
  #9B3D4B,
  #D2D2D2,
  #00FFFF,
  #8B8000,
  #41463C,
  #bbb2e9,
  #e75480,
};

// color name
String[] words = {
  "black",
  "blue",
  "red",
  "silver",
  "Cyan",
  "yellow",
  "green",
  "lilac",
  "pink",
};

// Mode framework
int mode;
final int title = 1, game = 2, end = 3;

// win or lose
final int win = 1, lose = 2;
int state = 0;

// variables
int    a = 0; // title movement
int    i = 0; // store gif function
float  u = 0; // undertale gif function
float ux = 0; // gif walking
float  f = 0; // play gif function

// keys
boolean up, down, left, right;

// guns
PImage rgun, wgun, gunf, rgunf;
float gh, gs;

// balloon
PImage balloon;
float bs = 1;
int score = 0;
boolean match;
Balloons[] MyBalloons;
int numBalloons;
float timer = 0;
int highest = 0;


void setup() {
  //sizes
  size(1200, 800, FX2D);
  noStroke();
  surface.setResizable(true);

  //music
  minim          = new Minim(this);
  introtheme     = minim.loadFile("upon.mp3");
  theme          = minim.loadFile("theme.mp3");
  losetheme      = minim.loadFile("gg.mp3");
  wintheme       = minim.loadFile("win.mp3");
  gunshotsound   = minim.loadFile("gunshot.mp3");

  //Fonts
  pixel = createFont("Pixel.ttf", 100);
  P5 = createFont("p5.ttf", 100);
  textAlign(CENTER, CENTER);
  textFont(pixel);

  //gifs
  //loopgif
  while (i < numframes) {
    introgif[i] = loadImage("zz" + i + ".gif");
    i++;
  }

  //undertale gif
  ugif[0] = loadImage("undertale0.png");
  ugif[1] = loadImage("undertale1.png");

  //image
  balloon = loadImage("balloon.png");

  //guns
  rgun    = loadImage("right gun.png");
  wgun    = loadImage("wrong gun.png");
  gunf    = loadImage("gunfire.png");
  rgunf   = loadImage("rgunfire.png");
  gh= height / 2;
  gs= 8;

  // balloon
  numBalloons = 6;
  MyBalloons = new Balloons[numBalloons];

  //mode
  mode = title;
}

void draw() {
  if (mode == title) {
    title();
  } else if (mode == game) {
    game();
  } else if (mode == end) {
    end();
  } else {
    println("error: " + mode);
  }
}
