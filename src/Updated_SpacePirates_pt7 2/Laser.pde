class Laser {
  int rad, x, y, speed, fpower;
  color c;


  //constructure
  Laser(int x, int y, color c) {
    rad = 5;
    fpower = 5;
    this.x = x;
    this.y = y;
    this.speed = 5;
    this.c = c;
  }

  void display() {

    noStroke();
    rectMode(CENTER);
    fill(c);
    rect(x, y, 5, 20, 4);
  }

  void fire() {
    y-= speed ;
  }

  boolean reachedTop() {
    if (y < 0-8) {
      return true;
    } else {
      return false;
    }
  }
}
