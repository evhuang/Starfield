//your code here
public void setup()
{
	//your code here
}
public void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
	double x, y, speed, angle;
	int 
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
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
