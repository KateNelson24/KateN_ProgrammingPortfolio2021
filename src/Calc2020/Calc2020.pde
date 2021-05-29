// Globals //<>//
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[14];
String dVal;

void setup() {
  size(290, 245); // Compact
  //size(290, 450);  // Extended
  dVal = "0";
  numButtons[0] = new Button(63, 220, 105, 30, "0", #6993B3, #C9E8FF);
  numButtons[1] = new Button(35, 185, 50, 30, "1", #6993B3, #C9E8FF);
  numButtons[2] = new Button(90, 185, 50, 30, "2", #6993B3, #C9E8FF);
  numButtons[3] = new Button(145, 185, 50, 30, "3", #6993B3, #C9E8FF);
  numButtons[4] = new Button(35, 150, 50, 30, "4", #6993B3, #C9E8FF);
  numButtons[5] = new Button(90, 150, 50, 30, "5", #6993B3, #C9E8FF);
  numButtons[6] = new Button(145, 150, 50, 30, "6", #6993B3, #C9E8FF);
  numButtons[7] = new Button(35, 115, 50, 30, "7", #6993B3, #C9E8FF);
  numButtons[8] = new Button(90, 115, 50, 30, "8", #6993B3, #C9E8FF);
  numButtons[9] = new Button(145, 115, 50, 30, "9", #6993B3, #C9E8FF);
  opButtons[0] = new Button(35, 80, 50, 30, "C", #AAAAAA, #EEEEEE);
  opButtons[1] = new Button(200, 220, 50, 30, "=", #B38E57, #FFDFB0);
  opButtons[2] = new Button(145, 220, 50, 30, ".", #B38E57, #FFDFB0);
  opButtons[3] = new Button(200, 185, 50, 30, "+", #B38E57, #FFDFB0);
  opButtons[4] = new Button(200, 150, 50, 30, "-", #B38E57, #FFDFB0);
  opButtons[5] = new Button(200, 115, 50, 30, "x", #B38E57, #FFDFB0);
  opButtons[6] = new Button(200, 80, 50, 30, "÷", #B38E57, #FFDFB0);
  opButtons[13] = new Button(90, 80, 50, 30, "±", #B38E57, #FFDFB0);
  opButtons[8] = new Button(145, 80, 50, 30, "%", #B38E57, #FFDFB0);
  opButtons[9] = new Button(255, 80, 50, 30, "x²", #B38E57, #FFDFB0);
  opButtons[10] = new Button(255, 115, 50, 30, "√", #B38E57, #FFDFB0);
  opButtons[11] = new Button(255, 150, 50, 30, "sin", #B38E57, #FFDFB0);
  opButtons[12] = new Button(255, 185, 50, 30, "cos", #B38E57, #FFDFB0);
  opButtons[7] = new Button(255, 220, 50, 30, "Rand", #B38E57, #FFDFB0);
}

void draw() {
  background(127);

  // Show Calculator Display
  updateDisplay();

  // Display and hover buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].hover(mouseX, mouseY);
    numButtons[i].display();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].hover(mouseX, mouseY);
    opButtons[i].display();
  }
}

void updateDisplay() {
  rectMode(CORNER);
  fill(222);
  rect(10, 10, width-20, 50);  

  fill(0);
  textAlign(RIGHT);

  // Render Scaling Text
  if (dVal.length()<13) {
    textSize(32);
  } else if (dVal.length()<14) {
    textSize(28);
  } else if (dVal.length()<15) {
    textSize(26);
  } else if (dVal.length()<17) {
    textSize(24);
  } else if (dVal.length()<19) {
    textSize(22);
  } else if (dVal.length()<21) {
    textSize(20);
  } else if (dVal.length()<23) {
    textSize(18);
  } else if (dVal.length()<25) {
    textSize(16);
  } else {
    textSize(14);
  }
  text(dVal, width-15, 50);
  
}

void mouseReleased() {
  for (int i=0; i<numButtons.length; i++) {
    if(numButtons[i].hover == true) {
      dVal += numButtons[i].val;
    }
  }
}

void performCalc() {
  
}
