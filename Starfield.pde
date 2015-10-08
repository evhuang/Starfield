//your code here
Particle [] ballPit;
public void setup()
{
	//your code here
	size(1280,650);
	ballPit = new Particle[150];
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
}
class NormalParticle implements Particle
{
	//your code here
	double nX, nY, dSpeed, dAngle;
	int cColor;
	NormalParticle()
	{
		nX = 640;
		nY = 325;
		dSpeed = 5;
		dAngle = (Math.random()*Math.PI*2);
		cColor = color((int)(Math.random()*255-50),(int)(Math.random()*255-50),(int)(Math.random()*255-50));
	}
	public void move()
	{
		nX = (Math.cos(dAngle) * dSpeed + nX);
		nY = (Math.sin(dAngle) * dSpeed + nY);
		if(nX >= 1280 || nY >= 650)
		{
		nX = 640;
		nY = 325;
		}
		
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
	int oX = 500;
	int oY = 500;
	public void show()
		{
			noStroke();
			ellipse((float)oX,(float)oY,30,30);
		}
	public void move()
		{
			oX = oX + (int)(Math.random() * 20 - 10);
			oY = oY + (int)(Math.random() * 10 - 5);
		}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	public void show()
		{
			noStroke();
			ellipse((float)nX,(float)nY,80,80);
		}
	public void move()
		{
			nX = Math.cos(dAngle) * dSpeed + nX;
			nY = Math.sin(dAngle) * dSpeed + nY;
		}
}

