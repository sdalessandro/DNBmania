class RightArrow {

  float arrowy, speed;
  PImage img0, img;

  RightArrow(float temparrowy) {
    arrowy = temparrowy;
    speed = 2;
    img0 = loadImage("RightMissed.jpg");
    img = loadImage("RightArrow.jpg");
  }

  void display() {
    move();
    if (arrowy<=50) {
    }
    else if (arrowy<=70) {
      image(img0, 675, arrowy);
    }
    else {
      image(img, 675, arrowy);
    }
  }

  void move() {
    arrowy -= speed;
  }
}

