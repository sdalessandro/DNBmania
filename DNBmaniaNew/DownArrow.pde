class DownArrow {

  float arrowy, speed;
  PImage img0, img;

  DownArrow(float temparrowy) {
    arrowy = temparrowy;
    speed = 2;
    img0 = loadImage("DownMissed.jpg");
    img = loadImage("DownArrow.jpg");
  }

  void display() {
    move();
    if (arrowy<=50) {
    }
    else if (arrowy<=70) {
      image(img0, 535, arrowy);
    }
    else {
      image(img, 535, arrowy);
    }
  }  

  void move() {
    arrowy -= speed;
  }
}

