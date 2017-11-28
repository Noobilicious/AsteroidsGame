class Stars
{
  private int myX, myY;
  public Stars(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  public void show(){
    stroke(200);
    fill(180);
    ellipse(myX, myY, 2, 2);
  }
}