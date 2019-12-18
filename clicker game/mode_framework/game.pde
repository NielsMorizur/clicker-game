void game() {
  background(#95C6FF);
    
  //basic target
  if (target == 1) {
      //target1
    strokeWeight(2);
    stroke(0);
    fill(255,0,0);
  ellipse(x,y, targetRadius,targetRadius);
    fill(255);
    noStroke();
  ellipse(x,y, targetRadius/1.3,targetRadius/1.3);
    fill(255,0,0);
  ellipse(x,y, targetRadius/1.8,targetRadius/1.8);
    fill(255);
  ellipse(x,y, targetRadius/3,targetRadius/3);
  }
  
  if (target == 2) {
    //target2
    fill(#F7E00C);
    stroke(#F7920C);
    strokeWeight(6);
  ellipse(x,y, targetRadius,targetRadius);
  }
  
  if (target == 3) {
    stroke(0);
    strokeWeight(2);
    fill(255,0,0);
  ellipse(x,y, targetRadius,targetRadius);
    noStroke();
    fill(#FC950D);
  ellipse(x,y, targetRadius/1.5,targetRadius/1.5);
    fill(#FFD603);
  ellipse(x,y, targetRadius/3,targetRadius/3);
  }
  
  scoreText = map(targetRadius, 40,180, 30,72);
  
    textSize(scoreText);
    fill(0);
  text(score, x,y-5);
  //movement
  x = x + vx;
  y = y + vy;
  
  //bounce top or bottom
  if (y < 0 + targetRadius/2 || y > 800 - targetRadius/2) vy = vy * -1;
  //bounce sides
  if (x < 0 + targetRadius/2 || x > 800 - targetRadius/2) vx = vx * -1;
    
    if (lives == 3){
      lives3(); 
    }else if (lives == 2) {
      lives2();
    }else if (lives == 1) {
      lives1();
    }else if (lives == 0) {
      lives0();
    }
  
    stroke(0);
    strokeWeight(2);
  line(368.6,2, 368.6,30);
  line(435.2,2, 435.2,30);
 
 if (mouseX>720 && mouseX<780 && mouseY>20 && mouseY<85) {
    fill(120); 
 }else {
    fill(80);
 }
    noStroke();
  rect(720,10, 20,65);
  rect(760,10, 20,65);
}

//------------------------------------------------------
void lives3() {
  //main rect
    stroke(0);
    strokeWeight(3);
  rect(300,1, 203,30);
  //life bars
     fill(255,0,0);
  rect(302,3, 66.6,27);
  rect(368.6,3, 66.6,27);
  rect(435.2,3, 66.6,27);
}

void lives2() {
   //main rect
    stroke(0);
    strokeWeight(3);
  rect(300,1, 203,30);
   //life bars
    fill(255,0,0);
  rect(302,3, 66.6,27);
  rect(368.6,3, 66.6,27);
    fill(255);
  rect(435.2,3, 66.6,27);
}

void lives1() {
  //main rect
    stroke(0);
    strokeWeight(3);
  rect(300,1, 203,30);
  //life bars
    fill(255,0,0);
  rect(302,3, 66.6,27);
    fill(255);
  rect(368.6,3, 66.6,27);
  rect(435.2,3, 66.6,27);
}

void lives0() {
  //main rect
    stroke(0);
    strokeWeight(3);
  rect(300,1, 203,30);
  //life bars
    fill(255);
  rect(302,3, 66.6,27);
  rect(368.6,3, 66.6,27);
  rect(435.2,3, 66.6,27);
}

void gameClicks() {
if (dist(mouseX,mouseY, x,y)<= targetRadius/2) {
    score=score+10; 
    coin.rewind();
    coin.play();
    
    vx = random(-6,6);
    vy = random(-6,6);
  }else if (mouseX>720 && mouseX<780 && mouseY>20 && mouseY<85) {
    mode = PAUSE;
  }else {
    lives=lives-1; //lives--;
    bump.rewind();
    bump.play();
    if (lives==0) {
     mode=GAMEOVER; 
    }
 }
 
}
