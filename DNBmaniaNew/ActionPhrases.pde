class ActionPhrases {

  KeyFunctions myKeyFunctions;

  boolean leftPressed, downPressed, upPressed, rightPressed;
  float arrowyL, arrowyD, arrowyU, arrowyR;
  PFont perfect, great, good, poor, boo;

  ActionPhrases() {
    myKeyFunctions = new KeyFunctions();
    perfect = loadFont("Breakaway-30.vlw");
    great = loadFont("Breakaway-30.vlw");
    good = loadFont("Breakaway-30.vlw");
    poor = loadFont("Breakaway-30.vlw");
    boo = loadFont("Breakaway-30.vlw");
  }

  void display() {
    if (leftPressed) {
      if (dist(460, arrowyL, 460, 50) <= 3) {
        fill(0, 255, 0);
        textFont(perfect, 30);
        text("PERFECT!!", width/2, height/2);
      }
      else if (dist(460, arrowyL, 460, 50) <= 6) {
        fill(255, 255, 0);
        textFont(great, 30);
        text("GREAT!", width/2, height/2);
      }
      else if (dist(460, arrowyL, 460, 50) <= 9) {
        fill(0, 100, 255);
        textFont(good, 30);
        text("GOOD", width/2, height/2);
      }
      else if (dist(460, arrowyL, 460, 50) <= 12) {
        fill(255, 0, 0);
        textFont(poor, 30);
        text("POOR", width/2, height/2);
      }
    }

    if (downPressed) {
      if (dist(535, arrowyD, 535, 50) <= 3) {
        fill(0, 255, 0);
        textFont(perfect, 30);
        text("PERFECT!!", width/2, height/2);
      }
      else if (dist(535, arrowyD, 535, 50) <= 6) {
        fill(255, 255, 0);
        textFont(great, 30);
        text("GREAT!", width/2, height/2);
      }
      else if (dist(535, arrowyD, 535, 50) <= 9) {
        fill(0, 100, 255);
        textFont(good, 30);
        text("GOOD", width/2, height/2);
      }
      else if (dist(535, arrowyD, 535, 50) <= 12) {
        fill(255, 0, 0);
        textFont(poor, 30);
        text("POOR", width/2, height/2);
      }
    }

    if (upPressed) {
      if (dist(605, arrowyD, 605, 50) <= 3) {
        fill(0, 255, 0);
        textFont(perfect, 30);
        text("PERFECT!!", width/2, height/2);
      }
      else if (dist(605, arrowyD, 605, 50) <= 6) {
        fill(255, 255, 0);
        textFont(great, 30);
        text("GREAT!", width/2, height/2);
      }
      else if (dist(605, arrowyD, 605, 50) <= 9) {
        fill(0, 100, 255);
        textFont(good, 30);
        text("GOOD", width/2, height/2);
      }
      else if (dist(605, arrowyD, 605, 50) <= 12) {
        fill(255, 0, 0);
        textFont(poor, 30);
        text("POOR", width/2, height/2);
      }
    }

    if (rightPressed) {
      if (dist(605, arrowyD, 605, 50) <= 3) {
        fill(0, 255, 0);
        textFont(perfect, 30);
        text("PERFECT!!", width/2, height/2);
      }
      else if (dist(605, arrowyD, 605, 50) <= 6) {
        fill(255, 255, 0);
        textFont(great, 30);
        text("GREAT!", width/2, height/2);
      }
      else if (dist(605, arrowyD, 605, 50) <= 9) {
        fill(0, 100, 255);
        textFont(good, 30);
        text("GOOD", width/2, height/2);
      }
      else if (dist(605, arrowyD, 605, 50) <= 12) {
        fill(255, 0, 0);
        textFont(poor, 30);
        text("POOR", width/2, height/2);
      }
    }
  }

  void arrowPressed() {
    if (keyCode == LEFT) {
      leftPressed = true;
    }
    if (keyCode == DOWN) {
      downPressed = true;
    }
    if (keyCode == UP) {
      upPressed = true;
    }
    if (keyCode == RIGHT) {
      rightPressed = true;
    }
  }

  void arrowReleased() {
    leftPressed  = false;
    downPressed  = false;
    upPressed    = false;
    rightPressed = false;
  }
}

