Spaceship bob = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> gun = new ArrayList <Bullet>();
Star[] sky = new Star[200];
int sum = 0;
int hearts = 3;
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
      hearts--;
    }
  }
  for (int i = 0; i < gun.size(); i++){
      gun.get(i).show();
      gun.get(i).move();
      for (int nI = 0; nI < rock.size(); nI++){
        if(dist(rock.get(nI).getCenterX(), rock.get(nI).getCenterY(), gun.get(i).getCenterX(), gun.get(i).getCenterY()) < 20){
          rock.remove(nI);
          gun.remove(i);
          sum++;
          break;
          }
      }
    }
    fill(255, 0, 0);
    textSize(40);
    textAlign(CENTER);
    text("Score: " + sum, 100, 50);
    text("Hearts: " + hearts, 100, 100);
    if (hearts < 1){
      background(0);
      rock.clear();
      gun.clear();
      text("Game Over", width / 2, height / 2);
      text("Press J to restart", width / 2, height / 2 + 50);
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
  //shoot bullet
  else if (key == 32){
    gun.add(new Bullet(bob));
  }
  // reset game
  else if (key == 'j'){
    hearts = 3;
    sum = 0;
    for (int i = 0; i < 20; i++){
    rock.add(i, new Asteroid());
    }
  }
}
