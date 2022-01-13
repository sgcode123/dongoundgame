class GameObject {
  int roomX,roomY;
  PVector velocity;
int score;
  PVector loc;
  int size;
    float x1,y2;
int hp,hpmax;
color c;
int xp;
float speed;
int damage;
boolean scary;
int ammo,ammomax;
  GameObject ( ) {
    loc= new PVector (width/2,height/2);
    velocity =new PVector (0,0);
    hp = 1;
  }

  void show() {
  }

  void act() {
    
    loc.add(velocity);

    if (loc.x < width*0.1) loc.x = width*0.1;
    if (loc.x > width*0.9) loc.x = width*0.9;
    if (loc.y < height*0.1) loc.y = height*0.1;
    if (loc.y > height*0.9) loc.y = height*0.9;
  }
}
