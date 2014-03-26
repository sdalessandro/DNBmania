class GameScreen {

  GameObjects myGameObjects;
  ActionPhrases myActionPhrases;

  PImage imgGZ;

  GameScreen() {
    myGameObjects = new GameObjects();
    myActionPhrases = new ActionPhrases();
    imgGZ = loadImage("Gamezone.png");
  }

  void display() {
    myGameObjects.display();
    myActionPhrases.display();

    //GameZone
    tint(255, 25);
    image(imgGZ, (width/2)-(width/8), 50);
    tint(255, 255);
  }
}

