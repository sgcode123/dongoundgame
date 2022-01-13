int mode; //<>// //<>//
int i;

boolean mouseReleased;
boolean hadPressed;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;


final int HEALTH=0;
final int AMMO=1;
final int GUN=2;
final int KEY = 3;
final int GUN1=4;
final int GUN3=5;


AnimatedGIF myGIF;
AnimatedGIF yourGIF;
AnimatedGIF ourGIF;
AnimatedGIF introGIF;
AnimatedGIF manup;
AnimatedGIF manright;
AnimatedGIF manleft;
AnimatedGIF man_down;
AnimatedGIF Skeletonup;
AnimatedGIF Skeletonright;
AnimatedGIF Skeletonleft;
AnimatedGIF Skeletondown;
AnimatedGIF slime;
AnimatedGIF rainbow;
AnimatedGIF lorien;
AnimatedGIF helth;
PImage map;

color northRoom, eastRoom, southRoom, westRoom;
Button blueButton, greenButton, pinkButton, blackButton,purpleButton,whiteButton;
color bkg;



boolean upkey, downkey, leftkey, rightkey, spacekey;
boolean win, lose;
Hero myHero;


ArrayList<GameObject> myObject;
ArrayList<DarknessCell>darkness;

boolean a, w, d, s;


//color pallet
color blue   = #0E91AA;
color green  = #04900F;
color pink   = #F7AADE;
color red    = #ff0000;
color yellow = #ffe100;
color black  = #000000;
color white  = #FFFFFF;
color purple = #A600AF;



color start = #00FF00;
color danger = #FF0000;
color extra = #999900;
color royal = #9966CC;
color winner = #FFFF00;


color brown = #7E6012;
color grey = #EDEDED;
color brown2 = #463506;
void setup() {
  size(800, 600);
  bkg = white;
  mode = INTRO;
  imageMode(CENTER);
  map = loadImage("map.png");
  
  darkness = new ArrayList<DarknessCell>();

  int size =10;
  int x = 0, y = 0;
  rectMode(CORNER);
  while (y < height) {
    darkness.add(new DarknessCell(x, y, size));
    x = x + size;
    if (x >= width) {
      x =0;
      y = y + size;
      
    }
  }


  //  float size =100;
  //int x = 0, y = 0;
  //rectMode(CORNER);
  //while (y<map.height) {
  //
  //  color c = map.get(x, y);
  //  fill(c);
  //  square(x*sizw, y*size, size);
  //  x = x +1;
  //  
  //  if (x >=map.width) {
  //    x =0;
  //    y = y +1;
  //    
  //  }
  //}

  //darkness.add(new DarknessCell(100,100,size));

  myObject = new ArrayList<GameObject>();
  myHero =new Hero();
 // myObject.add(new Enemy());
  myObject.add(myHero);
 // myObject.add(new Follower(1, 2));
//  myObject.add(new Follower(1, 2));
 // println(myObject.size());
x =0;
      y = 0;
      while(y < map.height){
        color roomColor = map.get(x,y);
        if(roomColor == pink){
          myObject.add(new sniper(x,y));
            myObject.add(new sniper(x,y));
            myObject.add(new sniper(x,y));
        }
        if(roomColor == black){
           myHero.coveroff = true;
        
           
        }
         if(roomColor == blue){
          
             myObject.add(new Follower(x,y));
            myHero.cover= 0;
          
        
           
        }
        if (roomColor== purple){
     
  myObject.add(new Enemy(x,y));
}

 if (roomColor== red){
   
 myObject.add(new Follower(x,y));
 myObject.add(new Follower(x,y));
 myObject.add(new Follower(x,y));
}
 if (roomColor== yellow){
   
 myObject.add(new BOSS(x,y));

}

        if (roomColor== green){
     myObject.add(new pewpewpeople(x,y));
     myObject.add(new pewpewpeople(x,y));
     myObject.add(new pewpewpeople(x,y));
     
     myHero.effect = true;
 
}
        x++;
        if(x== map.width){
          x =0;
      y ++;
        }
      }
      
    
  //ArrayList<DarknessCell>darkness;
  blueButton  = new Button("+", 200, 100, 200/2, 150/2, white, pink);
  greenButton = new Button("+", 200, 200, 100, 75, white, blue);
  purpleButton  = new Button("+", 200, 300, 100, 75, white, green);
  whiteButton = new Button("win 1000", 200, 450, 200, 150, white, yellow);
  
  
  pinkButton  = new Button("cloths", 20, 20, 50, 40, pink, blue); 
  blackButton = new Button("GAME", 400, 400, 400, 150, black, white);


  myGIF = new AnimatedGIF(38,10, "frame_", "_delay-0.03s.png", 100, 100, 200, 200);
 
  ourGIF = new AnimatedGIF(3,10, "gameGif/frame_", "_delay-0.2s.png");
  introGIF = new AnimatedGIF(3,10, "frame_", "_delay-0.1s.gif");
  manup = new AnimatedGIF(4,10, "sprites/man/up/sprite_", "_delay-0.03s.png");
  man_down = new AnimatedGIF(4,10, "sprites/man/_down/sprite_", ".png");
  manright= new AnimatedGIF(4,10, "sprites/man/right/sprite_", ".png");
  manleft= new AnimatedGIF(4,10, "sprites/man/left/sprite_", ".png");
  
   Skeletonup = new AnimatedGIF(4,10, "sprites/skeleton/up/Skeleton_", ".png");
  Skeletondown = new AnimatedGIF(4,10, "sprites/skeleton/down/Skeleton_", ".png");
  Skeletonright= new AnimatedGIF(4,10, "sprites/skeleton/right/Skeleton_", ".png");
  Skeletonleft= new AnimatedGIF(4,10, "sprites/skeleton/left/Skeleton_", ".png");
  
   slime= new AnimatedGIF(5,10, "sprites/slime/Slime_", ".png");
   rainbow= new AnimatedGIF(6,10, "gameGif/drop/rainbow/wand_", ".png");
    helth= new AnimatedGIF(4,10, "gameGif/drop/helth/helth_", ".png");
    lorien= new AnimatedGIF(8,10, "gameGif/drop/lorien/_", ".png");
}

//void show(){
//   myObject.add(new Enemy());
// myObject.add(new Hero());

//}



void draw() {
  //println(myObject.size());
  if (mousePressed) hadPressed = true;
  if (hadPressed && !mousePressed) {
    mouseReleased = true;
    hadPressed = false;
  } else if (  mouseReleased )  mouseReleased  = false;




  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
void keyPressed() {
  if (key == 'a') a = true;
  if (key =='w') w= true;
  if (key== 's') s = true;
  if (key == 'd') d = true;
}
void keyReleased() {
  if (key == 'a') a = false;
  if (key =='w') w = false;
  if (key == 's') s  = false;
  if (key == 'd') d  = false;
}
