Spaceship bob = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
Star[] sky = new Star[200];
public void setup() 
{
  size(600, 600);
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for (int i = 0; i < 20; i++){
    rock.add(i, new Asteroid());
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
  for (int nI = 0; nI < rock.size(); nI++){
    rock.get(nI).show();
    rock.get(nI).move();
    if(dist(rock.get(nI).getCenterX(), rock.get(nI).getCenterY(), bob.getCenterX(), bob.getCenterY()) < 20){
      rock.remove(nI);
    }
  }
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
