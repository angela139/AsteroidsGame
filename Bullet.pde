class Bullet extends Floater
{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(1.0);
  }
  public void show(){
    fill(0, 0, 255);
    ellipse((int)myCenterX, (int)myCenterY, 10, 10);
  }
  public int getCenterX(){
      return (int)myCenterX;
    }
    public int getCenterY(){
      return (int)myCenterY;
    }
}
