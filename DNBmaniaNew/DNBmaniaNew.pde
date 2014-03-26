import ddf.minim.*;

Minim minim;
AudioPlayer menuSong;
AudioPlayer song1;
GameScreen myGameScreen;
GameBackground myGameBackground;
TitleScreen myTitleScreen;
TitleScreenAni myTitleScreenAni;
KeyFunctions myKeyFunctions;
ActionPhrases myActionPhrases;

int mouseClicks = 0;
PImage bg0;

void setup() {
  size(1200, 800);
  background(0);
  minim = new Minim(this);
  menuSong = minim.loadFile("Stride.mp3");
  song1 = minim.loadFile("Witchcraft.mp3");
  myTitleScreen = new TitleScreen();
  myTitleScreen.display();
  myTitleScreenAni = new TitleScreenAni();
  myActionPhrases = new ActionPhrases();
  myKeyFunctions = new KeyFunctions();
  myGameBackground = new GameBackground();
  myGameScreen = new GameScreen();

  if (mouseClicks == 0) {
    menuSong.loop();
  }
}

void draw() {
  if (mousePressed == true && mouseClicks == 0) {
    background(0);
    song1.play();
    mouseClicks = mouseClicks + 1;
  }
  if (mouseClicks == 0) {
    myTitleScreenAni.display();
  }
  else {
    menuSong.pause();
    myGameBackground.display();
    myGameScreen.display();
    myActionPhrases.display();
    myKeyFunctions.display();
  }

  print("FPS: "+frameRate+"\n");
}

void keyPressed() {
  myActionPhrases.arrowPressed();
  myKeyFunctions.arrowPressed();
}

void keyReleased() {
  myActionPhrases.arrowReleased();
  myKeyFunctions.arrowReleased();
}

