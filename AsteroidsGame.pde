Stars[] twinkles = new Stars[300];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();

public void keyPressed(){
  if (key == 'a'){player.turn(-5);}    
  if (key == 'd'){player.turn(5);}
  if (key == ' '){player.accelerate(0.08);}
  if (key == '2'){
    player.setX((int)(Math.random()*600)); 
    player.setY((int)(Math.random()*600));
    player.setDirectionX(0);
    player.setDirectionY(0);
   }
}

Spaceship player = new Spaceship();
public void setup() 
{
  size(600, 600);
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i] = new Stars();
  }  
  for(int i = 0; i < 11; i++){
    rocks.add(i, new Asteroid());
  } 
}

public void draw() 
{
  background(0);
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i].show();
  }
  
  player.move();
  player.show();
  
  for(int i = 0; i < rocks.size(); i++){
    
    if(dist(player.getX(), player.getY(), rocks.get(i).getX(), rocks.get(i).getY()) <= 20) {
      rocks.remove(i);
    }
    rocks.get(i).move();
    rocks.get(i).show();
  } 
  

}