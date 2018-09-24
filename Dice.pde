/*  using 15 dice would have the 
  effect of up to 90
  minimun you get is 15
  maximum is 90
  15 40 65 90
  
  base dot size should be 16.5, 16.5
*/

void setup()
{
  noLoop();
  size(500, 600);
}
void draw()
{
  for (float y = 19; y < 250; y += 96.2) {
    for (float x = 19; x < 500; x += 96.2) {
      Die dark = new Die(x, y);
      dark.show(x, y);
    }
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
  int myValue;
  float  myX, myY;

  Die(float x, float y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //myValue = 1;
    myValue = (int)(Math.random()*6)+1;
    System.out.print(myValue + " ");
  }
  void show(float x, float y)
  {
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
  void one(float x, float y){
    baseDie();
    noStroke();
    fill(217, 66, 244);
    ellipse(x+38.6, y+38.6, 30, 30);
  }
  void two(float x, float y){
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
  }
  void three(float x, float y){
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+38.6, y+38.6, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
  }
  void four(float x, float y){
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+19.3, y+19.3, 16.5, 16.5);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
    ellipse(x+57.9, y+57.9, 16.5, 16.5);
  }
  void five(float x, float y){
    baseDie();
    noStroke();
    fill((int)(Math.random()*83+72), 66, 244);
    ellipse(x+19.3, y+19.3, 16.5, 16.5);
    ellipse(x+57.9, y+19.3, 16.5, 16.5);
    ellipse(x+38.6, y+38.6, 16.5, 16.5);
    ellipse(x+19.3, y+57.9, 16.5, 16.5);
    ellipse(x+57.9, y+57.9, 16.5, 16.5);
  }
  void six(float x, float y){
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
  void baseDie(){
    //fill(255);
    fill(0);
    stroke(0);
    rect(myX, myY, 77.2, 77.2, 5);
  }
}