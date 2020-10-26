void game() {
  intro();
  background(yellow);
  //center line
  strokeWeight(5);
  stroke(198, 198, 120);
  line(width/2, 0, width/2, height);

  //scoreboard 
  textSize(50);
  fill(pink);
  text(leftscore, width/4, 100);
  fill(green);
  text(rightscore, 3*width/4, 100);
  //text(timer, 3*width/4, 550);
  timer = timer - 1;
  
  //draw paddles
  stroke(255);
  fill(red);
  circle(leftx, lefty, leftd);
  fill(blue);
  circle(rightx, righty, rightd);

  //draw ball
  fill(purple);
  circle (ballx, bally, balld);

  //draw pause button
  if (mouseX > 350 && mouseX < 450 && mouseY > 0 && mouseY < 50) {
    stroke(0);
  } else {
    stroke(232, 249, 252);
  }
  strokeWeight(1);
  fill(198, 198, 120);
  rect(350, 0, 100, 50);
  fill(157, 157, 97);
  textSize(30);
  text("PAUSE", 355, 40);
  textSize(15);
  text("Double tap to Pause", 330, 80);



  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else 
righty = bally - 150;

//limiting the paddle
  if (lefty < leftd/2) {
    lefty = leftd/2;
  }
  if (righty < rightd/2) {
    righty = rightd/2;
  }
  if (lefty > 500) {
    lefty = 500;
  }
  if (righty > 500) {
    righty = 500;
  }
  //limiting the ball
  if (bally < balld/2) {
    bally = balld/2;
  }
  if (bally > 550) {
    bally = 550;
  }

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
    textSize(100);
    text("GO!", 330, 580);
  }
  //scoring
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally = height/ 2;
    timer = 100;
    score.rewind();
    score.play();
  }
  if (ballx > 800) {
    leftscore++;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    score.rewind();
    score.play();
  }

  //bouncing
  if (bally <= balld/2 || bally >=height-balld/2) {
    vy = vy * -1;
    wall.play();
    wall.rewind();
  }
  if (dist(ballx, bally, rightx, righty) < rightd/2 + balld/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
    rightpaddle.play();
    rightpaddle.rewind();
  }
  if (dist(ballx, bally, leftx, lefty) < leftd/2 + balld/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
    leftpaddle.play();
    leftpaddle.rewind();
  }

  //finishing the game
  if (leftscore > 2) {
    mode = GAMEOVER;
  }
  if (rightscore > 2) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
}
