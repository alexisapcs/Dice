/*  using 15 dice would have the 
  effect of up to 90
  minimun you get is 15
  maximum is 90
  15 40 65 90
  
  base dot size should be 20, 20
*/

Die first = new Die(19, 19);
Die second = new Die(115.2, height/2);
Die third = new Die(211.4, height/2);
Die fourth = new Die(307.6, height/2);
Die fifth = new Die(403.8, height/2);

void setup()
{
  noLoop();
  size(500, 600);
}
void draw()
{
  first.show();
  /*
  second.show();
  third.show();
  fourth.show();
  fifth.show();*/
}
void mousePressed()
{
  redraw();
  first.roll();
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
    myValue = 6;
    //myValue = (int)(Math.random()*6)+1;
    System.out.println(myValue);
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, 77.2, 77.2, 5);
    if (myValue == 1){
      one();
    } else if (myValue == 2){
      two();
    } else if (myValue == 3){
      three();
    } else if (myValue == 4){
      four();
    } else if (myValue == 5){
      five();
    } else if (myValue == 6){
      six();
    }
  }
  void one(){
    noStroke();
    fill(255, 0, 0);
    ellipse(57.6, 57.6, 30, 30);
  }
  void two(){
    noStroke();
    fill(0);
    ellipse(38.3, 38.3, 20, 20);
  }
  void three(){
    noStroke();
    fill(0);
  }
  void four(){
    noStroke();
    fill(0);
    ellipse(38.3, 38.3, 20, 20);
    ellipse(76.9, 38.3, 20, 20);
    ellipse(38.3, 76.9, 20, 20);
    ellipse(76.9, 76.9, 20, 20);
  }
  void five(){
    noStroke();
    fill(0);
    ellipse(57.6, 57.6, 20, 20);
  }
  void six(){
    noStroke();fill(0);
    ellipse(38.3, 38.3, 15, 15);
    ellipse(76.9, 38.3, 15, 15);
    ellipse(38.3, 57.6, 15, 15);
    ellipse(76.9, 57.6, 15, 15);
    ellipse(38.3, 76.9, 15, 15);
    ellipse(76.9, 76.9, 15, 15);
  }
}