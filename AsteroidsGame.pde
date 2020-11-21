Spaceship bob = new Spaceship();
Star[] sky = new Star[200];
public void setup() 
{
  size(600, 600);
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  //spaceship turns right
  if (key == 'r'){
    bob.turn(45);
  }
  //spaceship turns left
  else if (key == 'l'){
    bob.turn(-45);
  }
  //spaceship accelerates
  else if (key == 'a'){
    bob.accelerate(0.2);
  }
  //spaceship decelerates
  else if (key == 'd'){
    bob.accelerate(-0.2);
  }
  // hyperspace
  else if (key == 'h'){
    bob.hyperspace();
  }
}
