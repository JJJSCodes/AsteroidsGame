Spaceship space1 = new Spaceship();
Star[] nightSky = new Star[200];
//Bullet bull = new Bullet(250, 250, 5, 5, 5.5);
ArrayList <Bullet> bullet = new ArrayList <Bullet>(); 
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>(); 
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++) {
     nightSky[i] = new Star(); 
  }
  for (int z = 0; z < 15; z++) {
     rocks.add(new Asteroid()); 
  }
}
public void keyPressed() {
 if(key == 'h') {
    space1.setDirectionX(0); 
    space1.setDirectionY(0);
    space1.setX((int)(Math.random()*500));
    space1.setY((int)(Math.random()*500));
 }
 if(key == ENTER) {
    bullet.add(new Bullet(space1.getX(), space1.getY(), (int)space1.getDirectionX(), (int)space1.getDirectionY(), space1.getPointDirection()));
 }
 if(key == 'w') {
    space1.accelerate(.2);
 }
 if(key == 'a') {
   space1.turn(-10);
 }
 if(key == 's') {
   space1.accelerate(-.2);
 }
 if(key == 'd') {
   space1.turn(10);
 }
}
public void draw() 
{
  background(0,0,0);
  for(int z = 0; z < rocks.size(); z++) {
    rocks.get(z).show(); 
    rocks.get(z).move();
    if(dist(rocks.get(z).getX(), rocks.get(z).getY(), space1.getX(), space1.getY()) < 20) {
      rocks.remove(z); 
    }
  }
  for(int i = 0; i < bullet.size(); i++) {
   bullet.get(i).show();
   bullet.get(i).move();
   for(int j = 0; j < rocks.size(); j++) {
     if(dist(bullet.get(i).getX(), bullet.get(i).getY(), rocks.get(j).getX(), rocks.get(j).getY()) < 20) {
     rocks.remove(j);
     bullet.remove(i);
     break;
     }
   }
  }
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i].show(); 
  }
  space1.show();
  space1.move();
  space1.decellerate();
}
