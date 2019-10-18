class Spaceship extends Floater  
{   
   protected double myCenterX, myCenterY;
   protected double myDirectionX, myDirectionY;
   protected double myPointDirection;
   protected int myColor, corners;
   protected int[] xCorners;
   protected int[] yCorners;
   
   Spaceship() {
    myCenterX = 250;
    myCenterY = 250;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    xCorners[2] = 8;
    xCorners[3] = -2;
    xCorners[3] = 0;
   }
   
   public void move () {
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    if(myCenterX > 500) {
      myCenterX = 0;
    }
    else if (myCenterX < 0) {
      myCenterX = 500;
   }
   if(myCenterY > 500) {
     myCenterY = 0;
   }
   else if (myCenterY < 0) {
      myCenterY = 500; 
   }
   }
   
   public void accelerate (double dAmount) {
    double dRadians = myPointDirection*(Math.PI/180); 
    myDirectionX += ((dAmount) * Math.cos(dRadians));
    myDirectionY += ((dAmount) * Math.sin(dRadians));
   }
}
