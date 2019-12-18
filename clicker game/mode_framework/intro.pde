void intro() {
  background(#1122B7);
  lives = 3;
  score = 0;
  
    fill(255);
    textSize(72);
  text("CLICKER GAME", 400,200);
    
    //start button
  if (mouseX>250 && mouseX<550 && mouseY>350 && mouseY<450) {
    fill(0,200,0);
  }else {
    fill(0,160,0); 
  }
    strokeWeight(4);
    stroke(0);
  rect(250,350, 300,100);
    
    fill(255);
    textSize(70);
  text("START", 400,390);
  
  //options button
  if (mouseX>250 && mouseX<550 && mouseY>540 && mouseY<640) {
    fill(140);
  }else {
    fill(90); 
  }
  rect(250,540, 300,100);
  
    fill(255);
    textSize(60);
  text("OPTIONS", 400,585);

  theme.play();
}

void introClicks() {
  if (mouseX>250 && mouseX<550 && mouseY>350 && mouseY<450) {
    mode = GAME;
    theme.pause();
    theme.rewind();
    x=400;
    y=400;
  }
  
  if (mouseX>250 && mouseX<550 && mouseY>540 && mouseY<640) {
   mode = OPTIONS; 
   
  }
}
