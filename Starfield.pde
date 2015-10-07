//your code here
Particle [] ballPit;
public void setup()
{
	//your code here
	size(1280,720);
	ballPit = new Particle[300];
	for(int i = 0; i < ballPit.length; i++)
	{
		ballPit[i] = new NormalParticle();
	}

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
		nY = 350;
		dSpeed = 5;
		dAngle = 2.5;
		cColor = color((int)Math.random() * 255,(int)Math.random() * 255,(int)Math.random() * 255);
	}
	public void move()
	{
		nX = Math.cos(dAngle) * dSpeed + nX;
		nY = Math.sin(dAngle) * dSpeed + nY;

	}
	public void show()
	{
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
	int oX = 640;
	int oY = 350;
	public void show()
		{

		}
	public void move()
		{
			oX = oX + (int)(Math.random() * 20 - 10);
			oY = oY + (int)(Math.random() * 10 - 5);
		}
}
class JumboParticle //uses inheritance
{
	//your code here
	public void show()
		{
			
		}
	public void move()
		{

		}
}

