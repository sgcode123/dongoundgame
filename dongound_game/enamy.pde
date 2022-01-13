class Enemy extends GameObject {


   
  Enemy() {
loc= new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    hp= 100;
    roomX= 1;
    size=50;
    roomY = 1;
     
      xp = 5;      
     
  }
    Enemy(int x, int y) {
    loc= new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    hp= 100;
    roomX= x;
    size=50;
    roomY = y;
   
            
  }
  Enemy(int _hp, int s, int x, int y) {
    loc= new PVector(width/(random (0,3)), height/(random (0,3)));
    velocity = new PVector(0, 0);
    hp= _hp;
    roomX= x;
    size=s;
    roomY = y;
    
            
  }


  void show() {
    if (roomX==myHero.roomX && roomY == myHero.roomY) {

      stroke(black);
      strokeWeight(2);
      fill (green);
      circle(loc.x, loc.y, size);
      fill(black);
      textSize(20);
      text(hp, loc.x, loc.y);

    }
  }

  void act() {
 
    super.act();
if (hp < 0){
  hp=0;
}
    int i=0;
    while (i < myObject.size()) {
      GameObject obj = myObject.get(i);
      if (obj instanceof heroBullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
         if(roomX==obj.roomX && roomY == obj.roomY){
        if (d <= size/2 + obj.size/2) {
          hp= hp - int(obj.velocity.mag()) - myHero.damage;
          //  hp= hp -((heroBullet) obj).dam;
         obj.hp= 0;
          if(hp <= 0) {
            myObject.add(new Message(loc.x,loc.y,roomX,roomY, "+"+xp));
               myObject.add(new DroppedItem(loc.x,loc.y,roomX,roomY,yellow,50,50,100));
              
            if (random(0,100) > 60){
            myObject.add(new DroppedItem(loc.x,loc.y,roomX,roomY));
            }
            if (random(0,50) > 30){
             myObject.add(new DroppedItem(loc.x,loc.y,roomX,roomY,yellow));
            }
            if (random(0,100) > 85){
               myObject.add(new DroppedItem(loc.x,loc.y,roomX,roomY,yellow,50));
            }
              if (random(0,100)>93 ){
               myObject.add(new DroppedItem(loc.x,loc.y,roomX,roomY,yellow,50,50));
              }
              
            myHero.xp = myHero.xp + xp;
        myObject.add(new Message(loc.x,loc.y,roomX,roomY, "+"+xp));
           
          }
        }
         }
      }
      i++;
    }
  }
}
