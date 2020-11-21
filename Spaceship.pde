class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = 255;
      myCenterX = 300;
      myCenterY = 300;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperspace(){
      //stops movement
      myXspeed = 0;
      myYspeed = 0;
      //teleports to random coordinates
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
    }
}
