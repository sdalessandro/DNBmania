class LeftArrow {

  float arrowy, speed;
  PImage img0, img;

  LeftArrow(float temparrowy) {
    arrowy = temparrowy;
    speed = 2;
    img0 = loadImage("LeftMissed.jpg");
    img = loadImage("LeftArrow.jpg");
  }

  void display() {
    move();
    if (arrowy<=50) {
    }
    else if (arrowy<=70) {
      image(img0, 465, arrowy);
    }
    else {
      image(img, 465, arrowy);
    }
  }

  void move() {
    arrowy -= speed;
  }
}

