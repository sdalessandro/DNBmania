class GameBackground {

  int x;
  float i, j, k, l;
  boolean bgInitialized;
  PImage imgGZ, gameBG;

  GameBackground() {
    bgInitialized = false;
    gameBG = loadImage("GameBG.jpg");
    x = 0;
  }

  void display() {
    if (!bgInitialized) {
      //Game Background
      tint(255, 80);
      image(gameBG, 0, 0);
      tint(255, 255);

      //Green Lines
      while (x < width) {
        fill(120, 255, 0, 15);
        noStroke();
        triangle(width/2, 0, 600+x, height, 630+x, height);
        triangle(width/2, 0, 400-x, height, 370-x, height);
        x=x+80;
      }

      //Box around game zone
      noStroke();
      fill(255, 160);
      //Left side   
      arc((width/2)-(width/8), 50, 20, 20, PI, 3*PI/2);
      rect((width/2)-(width/8)-10, 50, 10, 1200);
      //Right side
      arc((width/2)+(width/8), 50, 20, 20, PI*3/2, 2*PI);
      rect((width/2)+(width/8), 50, 10, 1200);
      //Top
      rect((width/2)-(width/8), 40, (width/4), 10);

      bgInitialized = true;
    }
  }
}

