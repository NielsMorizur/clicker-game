void options() {
  background(150);
   
    textSize(70);
    fill(0);
  text("Choose Your Target", 400,100);
    stroke(0);
    strokeWeight(4);
  line(60,140, 750,140);
   
  if (mouseX>10 && mouseX<45  && mouseY>15 && mouseY<75) {
    fill(#0BBADB);
  }else if (mouseX>40 && mouseX<100 && mouseY>30 && mouseY<60) {
    fill(#0BBADB);
  }else {
    fill(#0E1C98);
  }    
    stroke(0);
    strokeWeight(2);
  rect(40,30, 60,30);
  triangle(40,15, 40,75, 10,45);
    //covering stroke inside arrow
    noStroke();
  rect(35,32, 20,27);
   
     //choose target
  //target1
    strokeWeight(2);
    stroke(0);
    fill(255,0,0);
  ellipse(400,400, targetRadius,targetRadius);
    fill(255);
    noStroke();
  ellipse(400,400, targetRadius/1.3,targetRadius/1.3);
    fill(255,0,0);
  ellipse(400,400, targetRadius/1.8,targetRadius/1.8);
    fill(255);
  ellipse(400,400, targetRadius/3,targetRadius/3);

 //target2
    fill(#F7E00C);
    stroke(#F7920C);
    strokeWeight(6);
  ellipse(180,550, targetRadius,targetRadius);
  
 //target3   
    stroke(0);
    strokeWeight(2);
    fill(255,0,0);
  ellipse(620,550, targetRadius,targetRadius);
    noStroke();
    fill(#FC950D);
  ellipse(620,550, targetRadius/1.5,targetRadius/1.5);
    fill(#FFD603);
  ellipse(620,550, targetRadius/3,targetRadius/3);
  
  
  //target size
    stroke(0);
    strokeWeight(3);
  line(200,700, 600,700);
    fill(255);
    stroke(0);
    strokeWeight(2);
  ellipse(sliderX,700, 50,50);
    if (mousePressed && dist(mouseX,mouseY, sliderX,700) <= 33) {
      sliderX = mouseX;
    }
    if (sliderX <= 200) sliderX = 200;
    if (sliderX >= 600) sliderX = 600;
    
    targetRadius = map(sliderX, 200,600, 40,180);
    
      textSize(50);
      fill(0);
    if (choose1 == 400) {
     text("Basic", 400,200); 
    }else if (choose1 == 180) {
     text("Sun", 180,350); 
    }else if (choose1 == 620) {
     text("Fireball", 620,350); 
    }
   
      fill(255,0,0);
      stroke(0);
      strokeWeight(3);
    triangle(choose1,choose2, choose3,choose4, choose5,choose6);
} 

void optionsClicks() {
  if (mouseX>10 && mouseX<40 && mouseY>15 && mouseY<75) {
    mode = INTRO;
  }else if (mouseX>40 && mouseX<100 && mouseY>30 && mouseY<60) {
     mode = INTRO;
  }

  if (dist(mouseX,mouseY, 400,400) <= targetRadius/2) {
    target = 1;
    choose1 = 400;
    choose2 = 300;
    choose3 = 370;
    choose4 = 260;
    choose5 = 430;
    choose6 = 260;
  }
  if (dist(mouseX,mouseY, 180,550) <= targetRadius/2) {
    target = 2;
    choose1 = 180;
    choose2 = 450;
    choose3 = 150;
    choose4 = 410;
    choose5 = 210;
    choose6 = 410;
  }
  if (dist(mouseX,mouseY, 620,550) <= targetRadius/2) {
    target = 3;
    choose1 = 620;
    choose2 = 450;
    choose3 = 590;
    choose4 = 410;
    choose5 = 650;
    choose6 = 410;
  }

}
