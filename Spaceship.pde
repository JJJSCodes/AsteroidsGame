class Spaceship extends Floater  
{   
   Spaceship() {
    myCenterX = 250;
    myCenterY = 250;
    myColor = color(255);
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
   }
   public double getDirectionX() {
     return (int)myDirectionX;  
   }
   
   public double getDirectionY() {
     return (int)myDirectionY;  
   }
   
   public double getPointDirection() {
     return (double)myPointDirection;
   }
   
   public void setPointDirection(int degrees) {
     myPointDirection = degrees; 
   }
   
   public void setDirectionY(double y) {
     myDirectionY = y;
   }
   
   public void setDirectionX(double x) {
     myDirectionX = x;
   }
   
   public void setX(int x)
    {
       myCenterX = x;
    }
    
    public void setY(int y)
    {
      myCenterY = y;
    }
    
    public int getX() {
      return (int)myCenterX; 
    }
    public int getY() {
      return (int)myCenterY; 
    }
    public void decellerate() {
      myDirectionX *= .98;
      myDirectionY *= .98;
    }

}
