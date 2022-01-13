class Message extends GameObject {
    
  //PVector direction;
  //float speed;

  Weapon W;
  int type ;
String text;
  int timer;
  
  Message(float x, float y, int rx, int ry, String t) {
  timer = 60;
   text = t;
   hp= 1;
   loc=  new PVector(x,y);
   velocity = new PVector(0,0);
   size = 20;
   roomX = rx;
   roomY = ry;
  
  }

   
 
  
   
  
  void show(){
   
    stroke(black);
    strokeWeight(2);
    fill(black);
       //rectangle
    
 

    //text label
    textAlign(CENTER, CENTER);
   
    textSize(20);
    
    
    fill(red);
    circle(loc.x, loc.y-65,30);
    fill(black);
   text(text, loc.x, loc.y-65);
  }
  void act() {
      
    
  
  timer --;
  
 
     if (timer == 0) {
      
      hp = 0;
    }
  }

  }

  
  
  
