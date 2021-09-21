// import music tool
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// music library 
Minim minim; 
// ingame themes
AudioPlayer normaltheme, mastertheme, safetheme, correctsound, wrongsound, arrowingsound, arrowoutsound; 
// other themes
AudioPlayer intronormaltheme, intromastertheme, introsafetheme, wintheme, losetheme;
// other sounds
AudioPlayer gamestartsound, welcomesound, winsound, losesound;

// Fonts
PFont Tango; 


// Mode framework
int mode; 
final int title = 1, game = 2, end = 3; 

int difficulty; 
final int normal = 1, master = 2, safe = 3; 

int game_mode; 
final int single = 1, dual = 2, as = 3; 

int winner; 
final int left = 1, right = 2; 

// variables 

void setup() {
  // sizes
  size(1000, 800);
  surface.setResizable(true);

  // music
  minim = new Minim(this);

  // Fonts
  Tango = createFont("Tango.ttf", 100);
  
  // mode
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
