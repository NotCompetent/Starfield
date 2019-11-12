//your code here
Particle[] alice;
void setup()
{
	//your code here
	
	size(500,500);
	alice = new Particle[2000];
	for(int i = 0; i < alice.length; i++){
		//t = (int)(Math.random()*0)(int)(Math.random()*0);
		alice[i]= new Particle();
	} 
}
void draw()
{
	//your code here
	translate(250,100);
	background(192);
	fill(75);
	rect(-50,-50,100,100);
	fill(30);
	ellipse(0,0,75,75);
	fill(0);
	ellipse(0,0,30,30);
	fill(255);
	for(int i = 0; i < alice.length; i++){
		alice[i].show();
		alice[i].move();
	}
	
}
class Particle
{
	//your code here
	double myX,myY,mySpeed,myAngle;
	int myColor;
	Particle()
	{
		myX = 0;
		myY = 0;
		mySpeed = (int)((Math.random()*4+5));
		myAngle = Math.random()*2*Math.PI;
	}
	void move()
	{
		myX=myX + Math.cos(myAngle)*mySpeed;
		myY=myY + Math.sin(myAngle)*mySpeed;
		if(Math.pow((Math.pow(myX,2)+Math.pow(myY,2)),.5)>500 && mySpeed ==7 ){
			myX = 0;
			myY = 0;
		}else if(Math.pow((Math.pow(myX,2)+Math.pow(myY,2)),.5)>400 && mySpeed ==6 ){
			myX = 0;
			myY = 0;
		}else if(Math.pow((Math.pow(myX,2)+Math.pow(myY,2)),.5)>600 && mySpeed ==8 ){
			myX = 0;
			myY = 0;
		}else if(Math.pow((Math.pow(myX,2)+Math.pow(myY,2)),.5)>700 && mySpeed ==9 ){
			myX = 0;
			myY = 0;
		}
	}
	void show()
	{
		ellipse((float)myX,(float)myY,5,5);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here 
}


