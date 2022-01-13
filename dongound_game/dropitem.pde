class DroppedItem extends GameObject {
    
  //PVector direction;
  //float speed;

  Weapon W;
  int type ;

  int timer;
  
  DroppedItem(float x, float y, int rx, int ry) {
  type = GUN;
   W = new snip();
   hp= 1;
   loc=  new PVector(x,y);
   velocity = new PVector(0,0);
   size = 20;
   roomX = rx;
   roomY = ry;
   c = yellow;
   timer = 190;
  }

   
  
  DroppedItem(float x, float y, int rx, int ry,int c,int hp) {
  type = GUN1;
   W = new pew();
   hp= 1;
   loc=  new PVector(x,y);
   velocity = new PVector(0,0);
   size = 20;
   roomX = rx;
   roomY = ry;
   c = yellow;
   timer = 190;
  }
  
  
  
    DroppedItem(float x, float y, int rx, int ry,int c,int hp,int timer) {
  type = GUN3;
   W = new candy();
   hp= 1;
   loc=  new PVector(x,y);
   velocity = new PVector(0,0);
   size = 20;
   roomX = rx;
   roomY = ry;
   c = yellow;
   timer = 190;
  }
  
      DroppedItem(float x, float y, int rx, int ry,int c,int hp,int timer,int ammo) {
  type = AMMO;
   
   hp= 1;
   loc=  new PVector(x,y);
   velocity = new PVector(0,0);
   size = 20;
   roomX = rx;
   roomY = ry;
   c = yellow;
   timer = 190;
  }
  
    DroppedItem(float x, float y, int rx, int ry,int c) {
  type = HEALTH;
   hp= 1;
   loc=  new PVector(x,y);
   velocity = new PVector(0,0);
   size = 20;
   roomX = rx;
   roomY = ry;
   c = yellow;
   timer = 190;
  }
  
  void show(){
    if(type == GUN){
    stroke(black);
    strokeWeight(2);
    fill(c);
     rainbow.show(loc.x, loc.y, size*5, size*5);
  //  circle(loc.x,loc.y,size);
    }
        if(type == GUN1){
    stroke(black);
    strokeWeight(2);
    fill(c);
     lorien.show(loc.x, loc.y, size*5, size*5);
  //  circle(loc.x,loc.y,size);
    }
     
    
         if(type == GUN3){
    stroke(black);
    strokeWeight(2);
    fill(c);
     lorien.show(loc.x, loc.y, size*5, size*5);
  //  circle(loc.x,loc.y,size);
    }
     if(type == HEALTH){
    stroke(black);
    strokeWeight(2);
    fill(c);
     helth.show(loc.x, loc.y, size*2, size*2);
  //  circle(loc.x,loc.y,size);
    }
     if(type == AMMO){
    stroke(black);
    strokeWeight(2);
    fill(c);
     
   circle(loc.x,loc.y,15);
    }
  }
  void act() {
      super.act();
      
      if(type == HEALTH ){
      
    
     float d = dist(myHero.loc.x, myHero.loc.y, loc.x, loc.y);
      
        if (d <= size*2 + myHero.size*2) {
    velocity = new PVector(myHero.loc.x-loc.x,myHero.loc.y-loc.y);
     velocity.setMag(3);
        }
    
  }
  timer --;
  
   if(type == GUN){
     if (timer == 0) {
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      hp = 0;
    }
  }

     if (timer == 0) {
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      myObject.add(new Blast(loc.x, loc.y));
      hp = 0;
    }
  
    int i=0;
    while (i < myObject.size()) {
      GameObject obj = myObject.get(i);
      if (obj instanceof Hero) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
         if(roomX==obj.roomX && roomY == obj.roomY){
        if (d <= size/2 + obj.size/2) {
          if(type==GUN1){
         myHero.myWeapon = W;
          hp= 0;
          }
           if(type==GUN3){
         myHero.myWeapon = W;
          hp= 0;
          }
           if(type==AMMO){
         myHero.ammo = 1000;
          hp= 0;
          }
           if(type==HEALTH){
         
          hp= 0;
          }
          if(type==GUN){
         myHero.myWeapon = W;
          hp= 0;
          }
          }
        }
         }
          i++;
      }
     
    }
    }

  
  
  
