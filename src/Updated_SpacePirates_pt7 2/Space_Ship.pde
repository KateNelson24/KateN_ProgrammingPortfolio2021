class SpaceShip {

  int rad, x, y, health, lives, ammo;


  //constructure
  SpaceShip() {
    rad = 25;
    x = 0;
    y = 0;
    health = 50;
    ammo = 1000;
  }

  void display(int x, int y) {
    this.x = x;
    this.y = y;

    rectMode(CENTER);
    //main body
    stroke(15, 70, 20);
    strokeWeight(2);
    fill(70, 170, 110);
    rect(x, y, 45, 60, 10);
    triangle(x, y-60, x+23, y-25, x-23, y-25);
    fill(30, 110, 70);
    rect(x, y+35, 50, 20);

    //sails
    stroke(180, 255, 255);
    fill(180, 255, 255);
    strokeWeight(8);
    line(x-38, y-5, x+38, y-5);
    rect(x, y-8, 72, 5, 25);
    //
    stroke(15, 70, 20);
    strokeWeight(2);
    fill(70, 170, 110);
    strokeWeight(3);
    line(x, y-62, x, y-85);
    line(x-40, y, x+40, y);
    strokeWeight(10);
    line(x, y, x, y);
    //
    stroke(180, 255, 255);
    triangle(x+30, y+30, x+40, y+35, x+30, y+40);
    triangle(x-30, y+30, x-40, y+35, x-30, y+40);

    //excessories
    fill(85, 95, 90);
    stroke(60, 70, 70);
    strokeWeight(2);
    ellipse(x, y+50, 30, 20);
    rect(x-30, y-30, 8, 8);
    rect(x+30, y-30, 8, 8);
    fill(100, 110, 105);
    rect(x-31, y-40, 5, 15);
    rect(x+31, y-40, 5, 15);
    //
    stroke(15, 70, 20);
    fill(30, 110, 70);
    rect(x, y+35, 55, 25);
    //
    fill(random(105), random(250), random(235));
    stroke(200, 235, 230);
    strokeWeight(2);
    triangle(x, y+75, x+10, y+65, x-10, y+65);
    triangle(x, y+85, x+10, y+75, x-10, y+75);
  }

  //Detect Rock Vs spaceship
  boolean rockIntersection(Rock rock) {
    float distance = dist(x, y, rock.x, rock.y);
    if (distance < rad  + rock.rad) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean PiraIntersection(Pira pira) {
    float distance = dist(x, y, pira.x, pira.y);
    if (distance < rad  + pira.rad) {
      return true;
    } else {
      return false;
    }
  }
  
   boolean plaserIntersection(Piralaser plaser) {
    float distance = dist(x, y, plaser.x, plaser.y);
    if (distance < rad  + plaser.rad) {
      return true;
    } else {
      return false;
    }
  }
}
