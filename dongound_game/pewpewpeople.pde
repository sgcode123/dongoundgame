class pewpewpeople extends Enemy {
  int shotTimer, threshold;
  pewpewpeople(int x, int y) {
    super(100, 50, x, y);
    xp= 15;
  }
  void show() {
    if (roomX==myHero.roomX && roomY == myHero.roomY) {
 
      stroke(black);
      strokeWeight(2);
      fill (blue);
      circle(loc.x, loc.y, size);
      fill(black);
      textSize(20);
      text(hp, loc.x, loc.y);
         
    }
  }

  void act() {
    threshold = 10;
    super.act();
    float d = dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y);

    if (d <= size*2 + myHero.size*2) {
    
      velocity.setMag(3);
    }


    shotTimer++;

    //  myObject.add(new UFOBullet());

    if ( shotTimer >= threshold) {
fill(green);
      myObject.add(new enemyBullet(green, 5, loc.x, loc.y));
      shotTimer =0;
    }
  }
}
