void gameover() {
  background(200,0,0);
  gameover.play();

  if (score > highScore) {
   highScore = score; 
  }
  
    fill(255);
  text("Highscore:" + highScore, 400,300);

    noFill();
   if (dist(mouseX,mouseY, 400,600) <= 70) {
     stroke(#14A23D);
   }else {
    stroke(255);
   }
    strokeWeight(20);
  ellipse(400,600, 100,100);
    noStroke();
    fill(200,0,0);
  triangle(400,600, 300,570, 430,510);
  if (dist(mouseX,mouseY, 400,600) <= 70) {
    fill(#14A23D);
  }else {
    fill(255);
  }
  triangle(320,580, 384,596, 362,550);
}

void gameoverClicks() {
  if (dist(mouseX,mouseY, 400,600) <= 70) {
   mode = INTRO; 
   gameover.pause();
  }
}
