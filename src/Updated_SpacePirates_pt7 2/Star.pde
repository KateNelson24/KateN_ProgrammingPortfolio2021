class Star {
  // member variable
  int x, y, speed, dia;
  color c;

  //constructure
  Star(int x, int y) {
    this.x = x;
    this.y = y;
    this.speed = int(random(3, 10));
    c = color(255);
    dia = int(random(1, 4));
  }
  
  void display() {
    rectMode(CENTER);
    noStroke();
    fill(c);
    ellipse(x, y, dia, dia);
  }
  void move() {
    y+= speed ;
  }
   boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
