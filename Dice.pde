/*  using 15 dice would have the 
  effect of up to 90
  minimun you get is 15
  maximum is 90
  15 40 65 90
*/

Die first = new Die(19, height/2);
Die second = new Die(115.2, height/2);
Die third = new Die(211.4, height/2);
Die fourth = new Die(307.6, height/2);
Die fifth = new Die(403.8, height/2);

void setup()
{
  noLoop();
  size(500, 600);
  System.out.println(height/2);
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
    myValue = 1;
    //myValue = (int)(Math.random()*6)+1;
    System.out.println(myValue);
    /*if (myValue == 1){
      one();
    } else if (myValue == 2){

    } else if (myValue == 3){
      
    } else if (myValue == 4){
      
    } else if (myValue == 5){
      
    } else if (myValue == 6){
      
    }*/
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, 77.2, 77.2, 5);
    if (myValue == 1){
      one();
    } else if (myValue == 2){

    } else if (myValue == 3){
      
    } else if (myValue == 4){
      
    } else if (myValue == 5){
      
    } else if (myValue == 6){
      
    }
  }
  void one(){
    noStroke();
    fill(255, 0, 0);
    ellipse(57.6, 95, 20, 20);
  }
  void two(){
  }
  void three(){
  }
  void four(){
  }
  void five(){
  }
  void six(){
  }
}