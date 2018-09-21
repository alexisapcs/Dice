/*  using 15 dice would have the 
  effect of up to 90
  minimun you get is 15
  maximum is 90
  15 40 65 90
  
  base dot size should be 16.5, 16.5
*/

//Die first = new Die(19, 19);
//Die second = new Die(115.2, height/2);
//Die third = new Die(211.4, height/2);
//Die fourth = new Die(307.6, height/2);
//Die fifth = new Die(403.8, height/2);

void setup()
{
  noLoop();
  size(500, 600);
}
void draw()
{
  for (float x = 19; x < 500; x = x + 96.2) {
    Die first = new Die(x, 19);
    first.show(x);
  }
  /*
  second.show();
  third.show();
  fourth.show();
  fifth.show();*/
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myValue, myY;
  float  myX;

  Die(float x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //myValue = 5;
    myValue = (int)(Math.random()*6)+1;
    System.out.println(myValue);
  }
  void show(float x)
  {
    baseDie();
    if (myValue == 1){
      one(x);
    } else if (myValue == 2){
      two(x);
    } else if (myValue == 3){
      three(x);
    } else if (myValue == 4){
      four(x);
    } else if (myValue == 5){
      five(x);
    } else if (myValue == 6){
      six(x);
    }
  }
  void one(float x){
    baseDie();
    noStroke();
    fill(255, 0, 0);
    ellipse(x+38.6, 57.6, 30, 30);
  }
  void two(float x){
    baseDie();
    noStroke();
    fill(0);
    ellipse(x+57.9, 38.3, 16.5, 16.5);
    ellipse(x+19.3, 76.9, 16.5, 16.5);
  }
  void three(float x){
    baseDie();
    noStroke();
    fill(0);
    ellipse(x+57.9, 38.3, 16.5, 16.5);
    ellipse(x+38.6, 57.6, 16.5, 16.5);
    ellipse(x+19.3, 76.9, 16.5, 16.5);
  }
  void four(float x){
    baseDie();
    noStroke();
    fill(0);
    ellipse(x+19.3, 38.3, 16.5, 16.5);
    ellipse(x+57.9, 38.3, 16.5, 16.5);
    ellipse(x+19.3, 76.9, 16.5, 16.5);
    ellipse(x+57.9, 76.9, 16.5, 16.5);
  }
  void five(float x){
    baseDie();
    noStroke();
    fill(0);
    ellipse(x+19.3, 38.3, 16.5, 16.5);
    ellipse(x+57.9, 38.3, 16.5, 16.5);
    ellipse(x+38.6, 57.6, 16.5, 16.5);
    ellipse(x+19.3, 76.9, 16.5, 16.5);
    ellipse(x+57.9, 76.9, 16.5, 16.5);
  }
  void six(float x){
    baseDie();
    noStroke();fill(0);
    ellipse(x+19.3, 38.3, 16.5, 16.5);
    ellipse(x+57.9, 38.3, 16.5, 16.5);
    ellipse(x+19.3, 57.6, 16.5, 16.5);
    ellipse(x+57.9, 57.6, 16.5, 16.5);
    ellipse(x+19.3, 76.9, 16.5, 16.5);
    ellipse(x+57.9, 76.9, 16.5, 16.5);
  }
  void baseDie(){
    fill(255, 255, 255);
    stroke(0);
    rect(myX, myY, 77.2, 77.2, 5);
  }
}