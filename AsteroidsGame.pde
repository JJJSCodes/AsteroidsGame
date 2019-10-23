Spaceship space1 = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++) {
     nightSky[i] = new Star(); 
  }
}
public void keyPressed() {
 if(key == 'h') {
    space1.setDirectionX(0); 
    space1.setDirectionY(0);
    space1.setX((int)(Math.random()*500));
    space1.setY((int)(Math.random()*500));
 }
 if(key == 'w') {
    space1.accelerate(2);
 }
 if(key == 'a') {
   space1.turn(-20);
 }
 if(key == 's') {
   space1.accelerate(-2);
 }
 if(key == 'd') {
   space1.turn(20);
 }
}
public void draw() 
{
  background(0,0,0);
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i].show(); 
  }
  space1.show();
  space1.move();
  if (space1.getDirectionX() > 1) {
      space1.setDirectionX(space1.getDirectionX() - .1);
  }
  if (space1.getDirectionX() <= 1) {
     space1.setDirectionX(0); 
  }
 if (space1.getDirectionY() > 0) {
      space1.setDirectionY(space1.getDirectionY() - .1);
  }
  System.out.println(space1.getDirectionX());
   System.out.println(space1.getDirectionY());
}
