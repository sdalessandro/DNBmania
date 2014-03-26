class UpArrow {

  float arrowy, speed;
  PImage img0, img;

  UpArrow(float temparrowy) {
    arrowy = temparrowy;
    speed = 2;
    img0 = loadImage("UpMissed.jpg");
    img = loadImage("UpArrow.jpg");
  }

  void display() {
    move();
    if (arrowy<=50) {
    }
    else if (arrowy<=70) {
      image(img0, 605, arrowy);
    }
    else {
      image(img, 605, arrowy);
    }
  }  

  void move() {
    arrowy -= speed;
  }
}

