void pause() {
  
  background(white);
  pinkButton.show();
  fill(bkg);

  blueButton.show();
  greenButton.show();
  whiteButton.show();
  purpleButton.show();
 


  if (blueButton.clicked) {
    bkg = blue;
    
    if(myHero.xp >=5){
      myHero.xp =myHero.xp -5;
    myHero.speed = myHero.speed + 1;
   if( myHero.speed >= 10){
     myHero.speed = 10;
   }
   
    }
  }
  
  if (whiteButton.clicked) {
    
    
    if(myHero.xp >=1000){
      myHero.xp =myHero.xp - 1000;
    myHero.win = true;
  mode = GAMEOVER;
    }
  }
  
  
  if (greenButton.clicked) {
    bkg = green;
    if(myHero.xp >=5){
      myHero.xp =myHero.xp -5;
    myHero.hpmax = myHero.hpmax + 1;
    myHero.hp = myHero.hpmax;
   if( myHero.hpmax>= 40){
     myHero.hpmax= 40;
   }
  }
  }

  if (purpleButton.clicked) {
    if(myHero.xp >=5){
    myHero.damage = myHero.damage+ 1;
    bkg = purple;
    myHero.xp =myHero.xp -5;
    }
  }

 
   
   

      
  man_down.show(600, 300, 400/1.5, 400);
  
 
  
  
  // text(200, 200, 100, 75
  fill(black);
  
  text("hp : " + myHero.hpmax, 290, 200, 300, 75);
  
  text("speed : " + myHero.speed, 320, 90, 300, 75);
  
  text("Damage : " +  myHero.damage , 320, 300, 300, 75);
  
  
  text("you have: "+ myHero.xp , 570, 30, 300, 75);
}

void pauseClicks() {

  if (mouseX > 10 && mouseX< 60  && mouseY> 10 && mouseY< 50) 
    
    mode = GAME;
  }
