//your code here
Particle[] alice;
void setup()
{
	//your code here
	size(500,500);
	alice = new Particle[1000];
	for(int i = 0; i < alice.length; i++){
		//t = (int)(Math.random()*0)(int)(Math.random()*0);
		alice[i]= new Particle();
	} 
}
void draw()
{
	//your code here
	background(192);
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
		myX = 250;
		myY = 250;
		mySpeed = (int)((Math.random()*5));
		myAngle = Math.random()*2*Math.PI;
		myColor = 255;
	}
	void move()
	{
		myX=myX + Math.cos(myAngle)*mySpeed;
		myY=myY + Math.sin(myAngle)*mySpeed;
		if(myX>Math.pow((Math.pow(250,2)+Math.pow(250,2)),.5)||myX<0){
			myX = 250;
			myY = 250;
		}else if(myY>Math.pow((Math.pow(250,2)+Math.pow(250,2)),.5)||myY<0){
			myX = 250;
			myY = 250;
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


