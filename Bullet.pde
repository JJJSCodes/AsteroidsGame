class Bullet extends Floater {
  Bullet (int x, int y, int directionX, int directionY, double pointDirection) {
   myCenterX = x;
   myCenterY = y;
   myPointDirection = pointDirection;
   double dRadians = pointDirection*(Math.PI/180);
   myDirectionX = (5 * Math.cos(dRadians) + directionX);
   myDirectionY = (5 * Math.sin(dRadians) + directionY);
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
    
  void show() {
    super.show();
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 12, 12);   
  }
}
