class Spaceship extends Floater  
{  

  public Spaceship() {
    corners = 11;
    int[] xSs = {12, 7, 0, -4, -10, -8, -10, -4, 0, 7, 12};
    int[] ySs = {0, 3, 4, 3, 6, 0, -6, -3, -4, -3, 0};
    xCorners = new int[corners];
    yCorners = new int[corners];
    for (int i = 0; i < corners; i++ ) {
      xCorners[i] = xSs[i];
      yCorners[i] = ySs[i];
    }
    myColor = 255;
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
  }
  
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}     
  public void setY(int y){myCenterY = y;}    
  public int getY(){return (int)myCenterY;} 
  public void setDirectionX(double x){myDirectionX = x;}  
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;};  
  public double getDirectionY(){return myDirectionY;}  
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  public void shoot() { lead.add(new Bullet(player)); }
}