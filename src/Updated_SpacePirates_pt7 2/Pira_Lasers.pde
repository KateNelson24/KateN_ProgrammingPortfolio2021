class Piralaser {
  int rad, x, y, speed, fpower;
  color c;


  //constructure
  Piralaser(int x, int y, color c) {
    rad = 5;
    fpower = int(random(5,10));
    this.x = x;
    this.y = y;
    this.speed = 3;
    this.c = c;
    c = color(#ABE8F7);
  }

  void display() {

    noStroke();
    rectMode(CENTER);
    fill(c);
    ellipse(x, y, 10, 10);
  }

  void fire() {
    y-= speed ;
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
