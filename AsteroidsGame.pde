Spaceship space1 = new Spaceship();
public void setup() 
{
  size(500, 500);
}
public void keyPressed() {
 if(key == 'h') {
    space1.setDirection = 0; 
 }
}
public void draw() 
{
  Spaceship.show();
}
