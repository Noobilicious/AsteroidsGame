class Asteroid extends Floater
{
  
  public Asteroid() {
    rotSpeed = (int)(Math.random()*3) + 1;
    corners = 9;
    int xSa[] = {20, 16, 7, -3, -10, -16, -4, 12, 20};
    int ySa[] = {0, 8, 10, 6, 8, -4, -16, -14, 0};
    xCorners = new int[corners];
    yCorners = new int[corners];
    for (int i = 0; i < corners; i++ ) {
      xCorners[i] = xSa[i];
      yCorners[i] = ySa[i];
    }
    myColor = 160;
    myCenterX = 0;
    myCenterY = (int)(Math.random()*600);
    myDirectionX = (Math.random()*3 - 1.5);
    myDirectionY = (Math.random()*3 - 1.5);
  }
  
  private int rotSpeed;
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
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}