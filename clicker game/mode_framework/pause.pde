void pause() {
  background(255);
    
  if (mouseX>300 && mouseX<500 && mouseY>300 && mouseY<500) {
    fill(0,0,200); 
  }else {
    fill(0,0,150);
  }
    stroke(0);
    strokeWeight(3);
  triangle(300,300, 300,500, 500,400);
    textSize(70);
    fill(0);
  text("Resume", 380,200);
    
    //menu button
  if (mouseX>300 && mouseX<500 && mouseY>650 && mouseY<700) {
    fill(255,0,0);
  }else {
    fill(190,0,0);
  }
    stroke(0);
    strokeWeight(3);
  rect(300,650, 200,50);
    fill(0);
    textSize(40);
  text("Menu", 400,670);
}

//-------------------------------------------------
void pauseClicks() {
  if (mouseX>300 && mouseX<500 && mouseY>300 && mouseY<500) {
    mode = GAME; 
  }
  
  if (mouseX>300 && mouseX<500 && mouseY>650 && mouseY<700) {
    mode = INTRO; 
  }
}
