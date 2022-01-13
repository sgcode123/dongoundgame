class Rainbowpew extends Weapon{
  Rainbowpew(){
    super(100,20);
  }
  
}
class pew extends Weapon{
   pew(){
    super(10,50);
  }
  
}
class pew2 extends Weapon{
   pew2(){
    super(16,30);
  }
  
  void shoot(){
    if(shotTimer >= threshold){
      for(int i=0; i < 30; i++){
       // aimPVector aimVector = new PVector (mouseX-myHero.loc.x,mouseY -myHero.loc.y);
       // aimPVector.rotate(random(-PI,PI));
       // aimPVector.setMag(bulletSpeed);
      }
      
      shotTimer = 0;
      
  }
}
}
class snip extends Weapon{
   snip(){
    super(20,15);
  }
}
  class candy extends Weapon{
   candy(){
    super(1,35);
  }
}
