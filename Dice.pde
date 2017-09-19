int count;
int highscore;
void setup()
{
	noLoop();
  size(370,440);
}
void draw()
{
  noStroke();
	background(0);
  count = 0;
  for (int a = 10; a <=340; a+=60)
  {
    for (int b = 10; b <=340; b+=60)
    {
      Die one = new Die(a,b);
      one.show();
      one.rollDice();
    }
  }
  fill(255);
  textSize(20);
  text("Total count:" + count, 10,395);
  if (count > highscore)
  {
    highscore = count;
  }
  text("Highest Count:" + highscore, 10,425);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int myX, myY, roll;
	Die(int x, int y) //constructor
	{
		myX= x;
    myY = y;
    roll = (int)(Math.random()*6+1);
	}
	void rollDice()
	{
		fill(25, 88, 214);
    if (roll == 1)
    {
      fill(249, 35, 19);
      ellipse(myX+25,myY+25,10,10);
      count = count + 1;
    }
    else if (roll == 2)
    {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      count = count + 2;
    }
    else if (roll == 3)
    {
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      count = count + 3;
    }
    else if (roll == 4)
    {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      count = count + 4;
    }
    else if (roll == 5)
    {
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      count = count + 5;
    }
    else
    {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
      ellipse(myX+10,myY+25,10,10);
      ellipse(myX+40,myY+25,10,10);
      count = count + 6;
    }
	}
	void show()
	{
    fill(255);
		rect(myX,myY,50,50,7);
    
	}
}