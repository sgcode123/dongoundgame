class BOSS extends Enemy {
  int shotTimer, threshold;
  BOSS(int x, int y) {
    super(100, 50, x, y);
    xp= 1000;
  }
  
  void show() {
    if (roomX==myHero.roomX && roomY == myHero.roomY) {
  myHero.coveroff = false;
      stroke(black);
      strokeWeight(2);
      fill (blue);
      //circle(loc.x, loc.y, size);
      fill(black);
      textSize(20);
      //text(hp, loc.x, loc.y);
                
          if (c == 1) {
      Skeletonup.show(loc.x, loc.y, (size/1.5)*7, size*7);
    }
    if (c == 2) {
      Skeletonleft.show(loc.x, loc.y, (size/1.5)*7, size*7);
    }
    if (c == 3) {
      Skeletondown.show(loc.x, loc.y, (size/1.5)*7, size*7);
    }
    if (c == 4) {
      Skeletonright.show(loc.x, loc.y, (size/1.5)*7, size*7);
    }
if (abs( velocity.y)  > abs( velocity.x)) {
      if ( velocity.y > 0) c = 3;
      else c = 1;
    } else {
      if  (velocity.x > 0) c = 4;
      else  c = 2;
    }
    }
  }

  void act() {
    threshold = 10;
    super.act();
    float d = dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y);

    if (d <= size*2 + myHero.size*2) {
      velocity = new PVector(myHero.loc.x-loc.x, myHero.loc.y-loc.y);
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
