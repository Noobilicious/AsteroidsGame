int lives = 3;
int points = 13;
Stars[] twinkles = new Stars[300];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> lead = new ArrayList <Bullet>();

public void keyPressed(){
  if (key == 'w'){lead.add(new Bullet(player));}
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
  for(int i = 0; i < 13; i++){
    rocks.add(i, new Asteroid());
  } 

}

public void draw() 
{
  background(0);
  
  for(int i = 0; i < twinkles.length; i++){
    twinkles[i].show();
  }
    
  for(int i = 0; i < lead.size(); i++){
    lead.get(i).move();
    lead.get(i).show();
    if(lead.get(i).getX() < 1 || lead.get(i).getX() > 599){
      lead.remove(i);
      i--;
    }
    
  else if(lead.get(i).getY() < 1 || lead.get(i).getY() > 599){
      lead.remove(i);
      i--;
    }
  }
  
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    if(dist(player.getX(), player.getY(), rocks.get(i).getX(), rocks.get(i).getY()) <= 20) {
      rocks.remove(i);
      i--;
      lives--;
      points--;
    }
    for(int a = 0; a < lead.size(); a++){
      if((dist(lead.get(a).getX(), lead.get(a).getY(), rocks.get(i).getX(), rocks.get(i).getY()) <= 15)) {
        rocks.remove(i);
        points--;
        lead.remove(a);
        break;
      }
    }
      
  } 

  player.move();
  player.show();
  
  textSize(32);
  fill(20, 220, 20);
  text("Lives: " + lives, 30, 560);
  
  if(lives <= 0){
    fill(50, 50, 200);
    rect(0, 0, 600, 600);
    textSize(45);
    fill(220, 20, 20);
    text("You Lose", 200, 290);    
  }
  
    if(points == 0 && lives > 0){
    fill(50, 50, 200);
    rect(0, 0, 600, 600);
    textSize(45);
    fill(220, 20, 20);
    text("You Win", 200, 290);    
  }

}