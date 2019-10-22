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
 }
 if(key == 'w') {
   
 }
 if(key == 'a') {
   
 }
 if(key == 's') {
   
 }
 if(key == 'd') {
   
 }
}
public void draw() 
{
  for(int i = 0; i < nightSky.length; i++) {
   nightSky[i].show(); 
  }
  space1.show();
}
