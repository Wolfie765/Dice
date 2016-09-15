void setup()
{
	size(420,460);
	noLoop();
}
void draw()
{
	background(198);
	//your code here
	int sum = 0;
	for (int j = 10; j < 400; j += 50)
	{
		for (int x = 10; x < 400; x += 50)
		{
			Die turkey = new Die(x, j);
			turkey.roll();
			turkey.show();
			sum = sum + turkey.numb;

		}

	}
	text("Your Lucky Numbers are: --"+ sum +" --" + (sum+ (int)(Math.random()*sum) + " -" + ( (sum*-1) - (-1*(int)(Math.random()*sum)))), 120, 420);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, numb; 
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		//your code here
		numb = (int)(Math.random()*6+1);
	}
	void show()
	{
		fill(255, 255, 255);
		rect(myX, myY, 40, 40, 10);
		//your code here
		if(numb == 1){
			fill(0,0,0);
			ellipse(myX + 20, myY + 20, 7.5, 7.5);
		}
		if(numb == 2){
			fill(0);
			ellipse(myX + 10, myY + 10, 7.5, 7.5);
			ellipse(myX + 30, myY + 30, 7.5, 7.5);
		}
		if(numb ==3){
			fill(0,0,0);
			ellipse(myX + 30, myY + 30, 7.5, 7.5);
			ellipse(myX + 20, myY + 20, 7.5, 7.5);
			ellipse(myX + 10, myY + 10, 7.5, 7.5);
		}
		if(numb ==4){
			fill(0,0,0);
			ellipse(myX + 10, myY + 10, 7.5, 7.5);
			ellipse(myX + 10, myY + 30, 7.5, 7.5);
			ellipse(myX + 30, myY + 30, 7.5, 7.5);
			ellipse(myX + 30, myY + 10, 7.5, 7.5);
		}
		if(numb ==5){
			fill(0,0,0);
			ellipse(myX + 20, myY + 20, 7.5, 7.5);
			ellipse(myX + 10, myY + 10, 7.5, 7.5);
			ellipse(myX + 10, myY + 30, 7.5, 7.5);
			ellipse(myX + 30, myY + 30, 7.5, 7.5);
			ellipse(myX + 30, myY + 10, 7.5, 7.5);
		}
		else if(numb ==6) {
			fill(0,0,0);
			ellipse(myX + 30, myY + 20, 7.5, 7.5);
			ellipse(myX + 10, myY + 20, 7.5, 7.5);
			ellipse(myX + 10, myY + 10, 7.5, 7.5);
			ellipse(myX + 10, myY + 30, 7.5, 7.5);
			ellipse(myX + 30, myY + 30, 7.5, 7.5);
			ellipse(myX + 30, myY + 10, 7.5, 7.5);
		}
	}
}
 