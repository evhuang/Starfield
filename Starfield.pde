//your code here
Particle [] ballPit;
public void setup()
{
	//your code here
	size(1280,500);
	ballPit = new Particle[300];
	for(int i = 0; i < ballPit.length; i++)
	{
		ballPit[i] = new NormalParticle();
	}

		ballPit[0] = new OddballParticle();
		ballPit[1] = new JumboParticle();
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
	double x, y, speed, angle;
	int cColor;
	public void move()
	{
		x = Math.cos(angle) * speed + x;
		y = Math.sin(angle) * speed + y;
	}
	public void show()
	{
		fill(255);
		ellipse((float)x,(float)y,20,20);
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
	public void show()
		{

		}
	public void move()
		{

		}
}
class JumboParticle extends Particle//uses inheritance
{
	//your code here
	public void show()
		{
			ellipse((float)x,(float)y,50,50);
		}
	public void move()
		{

		}
}

