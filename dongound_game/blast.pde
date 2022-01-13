class Blast extends GameObject {

  PVector direction;
  int timer;

  float vx, vy;
  Blast(float x, float y) {
    size = 10;
    timer = 25;
    hp = 1;
    loc = new PVector(x, y);
    //velocity.setMag(10);
    vx = random(-5, 5);
    vy = random(-5, 5);
    velocity = new PVector(vx, vy);
    velocity.setMag(5);
      roomX = myHero.roomX;
 roomY = myHero.roomY;
  }


  void show() {
    fill(255);
    circle( loc.x, loc.y, size);
  }

  void act() {
    super.act();
  
    
  timer --;
    if (timer == 0) {
      hp = 0;
    }
  }
}
