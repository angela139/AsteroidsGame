class Asteroid extends Floater 
{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = (int)(Math.random()*8)+5;
    yCorners[1] = -10;
    xCorners[2] = (int)(Math.random()*14)+9;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()*8)+5;
    yCorners[3] = (int)(Math.random()*12)+8;
    xCorners[4] = -11;
    yCorners[4] = (int)(Math.random()*10)+6;
    xCorners[5] = -5;
    yCorners[5] = 0;
    rotSpeed = (Math.random()*1)-1;
    myColor = 255;
    myCenterX = (int)(Math.random()*500)+50;
    myCenterY = (int)(Math.random()*500)+50;
    myXspeed = (Math.random()*2)-1;
    myYspeed = (Math.random()*2)-1;
    myPointDirection = (int)(Math.random()*360);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public int getCenterX(){
    return (int)myCenterX;
  }
  public int getCenterY(){
    return (int)myCenterY;
  }
}
