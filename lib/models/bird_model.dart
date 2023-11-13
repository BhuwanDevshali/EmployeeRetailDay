class Bird {
  double birdY;
  double initialPos;
  double jumpHeight = 50.0;
  double gravity = 1.5;

  Bird(this.initialPos) {
    this.birdY = initialPos;
  }

  void jump() {
    birdY -= jumpHeight;
  }

  void fall() {
    birdY += gravity;
  }

  double get position => birdY;
}