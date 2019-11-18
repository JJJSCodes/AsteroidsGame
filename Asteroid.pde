class Asteroid extends Floater {
  private int rotSpeed;
  Asteroid() {
    myCenterX = (int) (Math.random()* 500);
    myCenterY = (int) (Math.random()* 500);
    myDirectionX = (int)(Math.random() * 6 - 3);
    myDirectionY = (int)(Math.random() * 6 - 3);
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = color(255);
    rotSpeed = (int)(Math.random() * 20) - 10;
  }
  public double getDirectionX() {
     return (int)myDirectionX;  
   }
  
  public int getRotSpeed() {
     return rotSpeed; 
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
    
    void move() {
     turn(rotSpeed);
     super.move();
    }
} 
