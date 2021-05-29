class Pira {
  // member variable
  PImage pira;
  int rad, x, y, speed, health;
  color c;

  //constructure
 Pira(int x, int y) {
    rad = 25;
    this.x = x;
    this.y = y;
    this.speed = int(random(3,7));
    health = 20;
    pira = loadImage("Pira.png");
  }
   
  //display method

  void display() {
    image(pira,x,y);
  }
  
  void move() {
    y+= speed ;
  }
  
    boolean plaserIntersection(Piralaser plaser) {
    float distance = dist(x, y, plaser.x, plaser.y);
    if (distance < rad  + plaser.rad) {
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

 
