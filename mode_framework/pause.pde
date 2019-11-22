void pause() {
  background(150);
  
    stroke(0);
    strokeWeight(2);
    fill(0,0,180);
  rect(40,30, 60,30);
  triangle(40,15, 40,75, 10,45);
    //covering stroke inside arrow
    noStroke();
  rect(35,32, 20,27);
    
}

void pauseClicks() {
  if (mouseX>10 && mouseX<40 && mouseY>15 && mouseY<75) {
    mode = INTRO;
  }else if (mouseX>40 && mouseX<100 && mouseY>30 && mouseY<60) {
     mode = INTRO;
  }

}
