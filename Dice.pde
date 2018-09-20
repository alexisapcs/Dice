/*	using 15 dice would have the 
	effect of up to 90
	minimun you get is 15
	maximum is 90
	15 40 65 90
*/

Die first = new Die(width/2, height/2);

void setup()
{
	noLoop();
	size(500, 600);
}
void draw()
{
	first.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myValue, myX, myY;

	Die(int x, int y) //constructor
	{
		myValue = 1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255, 255, 255);
		rect(myX, myY, 25, 25, 5);
	}
}
