class Rock {
  PImage rock;
  int rad, x, y, speed, health;
  color c;

  //constructure
  Rock(int x, int y, color c) {
    rad = 35;
    this.x = x;
    this.y = y;
    this.speed = int(random(3, 9));
    this.c = c;
    health = 10;
    rock = loadImage("Rock.png");
  }

  void display() {
    image(rock,x,y);    
  }
  
  void move() {
    y+= speed ;
  }

  //Rock vs laser collisiom
  boolean laserIntersection(Laser laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if (distance < rad  + laser.rad) {
      return true;
    } else {
      return false;
    }
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
