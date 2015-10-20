//your code here
Particle [] ballPit;
public void setup()
{
	//your code here
	size(1280,800);
	background(255);
	ballPit = new Particle[450];
	for(int i = 0; i < ballPit.length; i++)
	{
		ballPit[i] = new NormalParticle();
	}
		ballPit[1] = new JumboParticle();
		ballPit[0] = new OddballParticle();
}
public void draw()
{
	//your code here
	for(int i = 0; i < ballPit.length; i++)
	{
		ballPit[i].move();
		ballPit[i].show();
	}
	fill(0,0,0,20);
	rect(0,0,1280,800);
	if(mousePressed == true)
	{
		for(int i = 0; i < ballPit.length; i++)
		{
		ballPit[i].move();
		ballPit[i].show();
		}
	}
}
class NormalParticle implements Particle
{
	//your code here
	double nX, nY, dSpeed, dAngle;
	int cColor;
	NormalParticle()
	{
		nX = 640;
		nY = 400;
		dSpeed = (Math.random() * 10 - 5);
		dAngle = (Math.random()*Math.PI*2);
		cColor = color((int)(Math.random()*175 + 80),(int)(Math.random()*175 + 80),(int)(Math.random()*175 + 80));
	}
	public void move()
	{
		nX = (Math.cos(dAngle) * dSpeed + nX);
		nY = (Math.sin(dAngle) * dSpeed + nY);
		
		dAngle = dAngle - 0.018;
		
	}
	public void show()
	{
		noStroke();
		fill(cColor);
		ellipse((float)nX,(float)nY,20,20);
	}
}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double oX = 640;
	double oY = 400;
	double dAngle = (Math.random() * Math.PI * 2);
	double dSpeed = (Math.random() * 10 - 5);
	public void show()
		{
			noStroke();
			fill(255);
			ellipse((float)oX,(float)oY,30,30);
		}
	public void move()
		{
			oX = Math.cos(dAngle) * dSpeed + oX;
			oY = Math.sin(dAngle) * dSpeed + oY;
			dAngle = dAngle + 0.025;
		}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	public void show()
		{
			noStroke();
			fill(255);
			ellipse((float)nX,(float)nY,80,80);
		}
	public void move()
		{
			nX = Math.cos(dAngle) * dSpeed + nX;
			nY = Math.sin(dAngle) * dSpeed + nY;
			dAngle = dAngle - 0.018;
		}
}
 
