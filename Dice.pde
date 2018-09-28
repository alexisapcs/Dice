/* 
  using 20 dice would have the 
  effect of up to 120
  minimun you get is 20
  maximum is 120
  
  If you get a sum of 100 or higher then you get x10
  If you get a sum of 75 to 99 then get x2
  If you get a sum of lower than 80 then you lose the bet
  
  base dot size should be 16.5, 16.5
*/

int sum;
String bet = "0";
String typing = "0";
String balance = "100";

int iBalance;
int iBet;
PFont myFont;

void setup() {
  noLoop();
  size(500, 544);
  myFont = createFont("Impact", 20);
  //AmericanTypewriter-Condensed
  //BradleyHandITCTT-Bold
  //Courier
  //HiraginoSans-W1
  //Impact
  //MarkerFelt-Thin
  //NanumPen
  //Skia-Regular_Light
  textFont(myFont);
  textAlign(LEFT, CENTER);
}

void draw() {  
  iBalance = Integer.parseInt(balance);
  iBet = Integer.parseInt(bet);
  if (iBet <= iBalance){
    background(200);
    for (float y = 19; y < 325; y += 96.2) {
      for (float x = 19; x < 500; x += 96.2) {
        Die dark = new Die(x, y);
        dark.show(x, y);
      }
    }
    fill(0);
    betCheck();
    text("Sum of Dice: " + sum, 20, 404);
    text("Balance: " + iBalance, 300, 404);
    text("Bet: " + iBet, 300, 426);
    if (sum >= 100) {
      textAlign(CENTER, CENTER);
      text("You mulipled your bet by 10", width/2, 475);
      textAlign(LEFT, CENTER);
    } else if (sum >= 75) {
      textAlign(CENTER, CENTER);
      text("You doubled your bet", width/2, 475);
      textAlign(LEFT, CENTER);
    } else if (sum < 75){
      textAlign(CENTER, CENTER);
      text("You lost your bet", width/2, 475);
      textAlign(LEFT, CENTER);
    }
    
    } else if (iBalance != 0) {
      textAlign(CENTER, CENTER);
      text("Your bet is too high", width/2, 475);
      textAlign(LEFT, CENTER);
    } else {
      textAlign(CENTER, CENTER);
      text("You lost all your money.", width/2, 475);
      text("Refresh to get more or roll without gambling.", width/2, 500);
      textAlign(LEFT, CENTER);
    }
  bet = "0";
}

void mousePressed() {
  redraw();
  sum = 0;
}

void keyPressed() {
  if (key == '0') {
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '1') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '2') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '3') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '4') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '5') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '6') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '7') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '8') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '9') {  
    typing = Character.toString(key);
    bet += Character.toString(key);
  } else if (key == '\n') {
    iBet = Integer.parseInt(bet);
    redraw();
    sum = 0;
  }
}
void betCheck() {
  if (sum >= 100) {
    iBalance += iBet * 10;
    balance = Integer.toString(iBalance);
  } else if (sum >= 75) {
    iBalance += iBet * 2;
    balance = Integer.toString(iBalance);
  } else {
    iBalance -= iBet;
    balance = Integer.toString(iBalance);
  }
}

class Die {
  int myValue;
  float  myX, myY;

  Die(float x, float y) {
    roll();
    myX = x;
    myY = y;
  }
  
  void roll() {
    myValue = (int)(Math.random()*6)+1;
    calcSum(myValue);
  }
  
  void show(float x, float y) {
    baseDie();
    if (myValue == 1){
      one(x, y);
    } else if (myValue == 2){
      two(x, y);
    } else if (myValue == 3){
      three(x, y);
    } else if (myValue == 4){
      four(x, y);
    } else if (myValue == 5){
      five(x, y);
    } else if (myValue == 6){
      six(x, y);
    }
  }
  
  void calcSum(int value) {
    sum+=value;
  }
  
  void one(float x, float y) {
    baseDie();
    noStroke();
    fill(217, 66, 244);
    ellipse(x+38.6, y+38.6, 30, 30);
  }
  
  void two(float x, float y) {
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
  }
  
  void three(float x, float y) {
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+38.6, y+38.6, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
  }
  
  void four(float x, float y) {
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+19.3, y+19.3, 16.5, 16.5);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
    ellipse(x+57.9, y+57.9, 16.5, 16.5);
  }
  
  void five(float x, float y) {
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+19.3, y+19.3, 16.5, 16.5);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+38.6, y+38.6, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
    ellipse(x+57.9, y+57.9, 16.5, 16.5);
  }
  
  void six(float x, float y) {
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+19.3, y+19.3, 16.5, 16.5);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+19.3, y+38.6, 16.5, 16.5);
    ellipse(x+57.9, y+38.6, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
    ellipse(x+57.9, y+57.9, 16.5, 16.5);
  }
  
  void baseDie() {
    //fill(255);
    fill(0);
    stroke(0);
    rect(myX, myY, 77.2, 77.2, 15);
  }
}