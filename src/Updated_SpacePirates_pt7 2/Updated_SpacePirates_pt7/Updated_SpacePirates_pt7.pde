//Space Pirates
// By Kate Nelson | Dec 2020

SpaceShip sp1;
ArrayList<Laser> lasers;
ArrayList<Star> stars;
ArrayList<Rock> rocks;
ArrayList<Pira> piras;
ArrayList<Piralaser> plasers;
Timer timer, piraTimer;
int x, y, score, healthStart, pHealth;
boolean play;
PImage SPStart, SPEnd, Chest;
import processing.sound.*;
SoundFile laser;
SoundFile Explos; 

void setup() {
  size(1000, 800);

  sp1 = new SpaceShip();
  lasers = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  piras = new ArrayList();
  plasers = new ArrayList();

  timer = new Timer(int(random(500, 1000)));
  piraTimer = new Timer(int(random(500, 1000)));
  score = 0;
  healthStart = 10;
  pHealth = 20;
  timer.start();


  SPStart = loadImage("SPStart.png");
  SPEnd = loadImage("SPEnd.png");
  Chest = loadImage("Chest.png");
  laser = new SoundFile(this, "Laser.wav");
  Explos = new SoundFile(this, "Explos.wav");


  play = false;
}

void draw () {
  noCursor();

  if (!play) {
    startScreen();
  } else {

    background(#07081c);

    stars.add(new Star (int(random(width)), 0));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom ()) {
        rocks.remove(star);
      }
    }

    if (timer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50, color(#8F7054)));
      timer.start();
    }

    if (piraTimer.isFinished()) {
      piras.add(new Pira(int(random(width)), -50));
      piraTimer.start();
    }
    // enemy ship render
    for (int i = 0; i<piras.size(); i++) {
      Pira pira = piras.get(i);
      pira.move();
      pira.display();
    }
    // enemy ship render
    for (int i = 0; i<piras.size(); i++) {
      Pira pira =piras.get(i);
      pira.move();
      pira.display();
      // enemy and ship intersection
      if (sp1.PiraIntersection(pira)) {
        sp1.health-=10;
        score+=pHealth;
        piras.remove(pira);
      }
      if (piraTimer.isFinished()) {
        plasers.add(new Piralaser(pira.x, pira.y, #ABE8F7));
        piraTimer.start();
      }
    }

    // enemy laser rendering
    for (int i =plasers.size()-1; i>=0; i--) {
      Piralaser plaser = (Piralaser) plasers.get(i);
      plaser.fire();
      plaser.display();
      // Enemy Laser vs. Ship
      if (sp1.plaserIntersection(plaser)) {
        sp1.health-=plaser.fpower;
        plasers.remove(plaser);
      }
      if (plaser.reachedBottom()) {
        plasers.remove(plaser);
      }
    }




    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      //detect ship collision
      if (sp1.rockIntersection(rock)) {
        sp1.health-= rock.health;
        rocks.remove(rock);
      }
      if (rock.reachedBottom ()) 
        rocks.remove(rock);
    }
  }
  for (int i = 0; i < lasers.size(); i++) {
    Laser laser = lasers.get(i);
    laser.display();
    laser.fire();
    //Laser vs rock collision
    for (int j = 0; j < rocks.size(); j++) {
      Rock rock = rocks.get(j);
      if (rock.laserIntersection(laser)) {
        rock.health-= laser.fpower;
        lasers.remove(laser);
        if (rock.health<1) {
          Explos.play();
          score+=healthStart;
          rocks.remove(rock);
        }
      }
    }

    if (laser.reachedTop ()) {
      lasers.remove(laser);
    }
    sp1.display(mouseX, mouseY);
    infoPanel();
  }
  if (sp1.health<1) {
    play = false;
    gameOver();
  }
}


void mousePressed() {
  laser.play();

  lasers.add(new Laser(mouseX, mouseY, color(random(50), random(250), random(235))));
  sp1.ammo --;
}

void startScreen() {
  background(#07081c);   
  image(SPStart, 370, height/2-320);  
  textAlign(CENTER);
  fill(255);
  strokeWeight(60);
  text("SPACE PIRATES", width/2, height/2-10);
  strokeWeight(6);
  text("Click To Begin . . . If ye dare", width/2, height/2+20);
  text("Hint: Without the light of yer blasters nothin can see ya", width/2, height-80);

  if (mousePressed) {
    play = true;
  }
}



void infoPanel() {
  fill(54, 191, 157, 80);
  stroke(42, 135, 112, 55);
  strokeWeight(8);
  rectMode(CORNER);
  rect(0, height-55, width-700, 55);
  fill(255);
  text("Health:" + sp1.health, 35, height-30);
  text("Ammo:" + sp1.ammo, 110, height-30);
  text("Lives:" + sp1.lives, 30, height-10);
  text("Score:" + score, 100, height-10);
}

void gameOver() {
  background(#07081c);
  image(SPEnd, 370, height/2-320);
  image(Chest, 450, height/2+50);
  textAlign(CENTER);
  fill(255);
  strokeWeight(8);
  text("Yarg! Sorry Mate, Ye lost your treasure", width/2, height/2+20);
  text("Yer treasure:" + score, width/2, height/2+40);
  noLoop();
}
