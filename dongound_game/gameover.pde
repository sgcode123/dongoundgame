void gameover(){
    background(white);
    textSize(100);
    fill(black);
     textAlign(CENTER, CENTER);
     
 text("loser",400,300);
 if(myHero.win == true){
   textSize(70);
   text("you win",400,200);
   textSize(30);
   text("for playing the game through",400,350);
 }
}
  
