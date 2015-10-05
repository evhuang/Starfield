//your code here
Particle [] ballPit;
public void setup()
{
	//your code here
	ballPit[] = new Particle[300];
	for(int i = 0; i < ballPit.length; i++)
	{
		ballPit[i] = new Particle();
	}
}
public void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
	double x, y, speed, angle;
	void move()
	{
		x = Math.cos(angle) * speed + x;
		y = Math.sin(angle) * speed + y;
	}
	void show()
	{
		fill(255);
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

		}
	public void move()
		{

		}
}

