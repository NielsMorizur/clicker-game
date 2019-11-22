void game() {
  background(200);

    textSize(40);
  text("Score:" + score, 100,30);
  text("Lives:" + lives,100,70);
  
  //target
    strokeWeight(3);
    stroke(255,0,0);
    fill(0);
  ellipse(x,y, 100,100);
  
  //movement
  x = x + vx;
  y = y + vy;
  
  //bounce top or bottom
  if (y < 53 || y > 747) vy = vy * -1;
  //bounce sides
  if (x < 53 || x > 747) vx = vx * -1;
}

void gameClicks() {
if (dist(mouseX,mouseY, x,y)<=53) {
    score=score+10; //same thing as score=score+1;
    coin.rewind();
    coin.play();
  }else {
    lives=lives-1; //lives--;
    bump.rewind();
    bump.play();
    if (lives==0) mode=GAMEOVER; 
  
  }
}
