void intro() {
  intro.play();
  background(yellow);
  fill(198, 198, 120);
  textSize(150);
  text("PONG", 200, 250);

  //1 player button
  if (mouseX > 90 && mouseX < 390 && mouseY > 400 && mouseY < 500) {
    stroke(0);
  } else {
    stroke(232, 249, 252);
  }
  fill(232, 249, 252);
  rect(90, 400, 300, 100);

  //2 player button
  stroke(232, 249, 252);
  if (mouseX > 400 && mouseX < 700 && mouseY > 400 && mouseY < 500) {
    stroke(0);
  } else {
    stroke(232, 249, 252);
  }
  fill(232, 249, 252);
  rect(400, 400, 300, 100);
  strokeWeight(1);
  textSize(50);
  fill(blue);
  text("1 PLAYER", 120, 470);
  text("2 PLAYER", 430, 470);
}

void introClicks() {
  //1 player
  if (mouseX > 90 && mouseX < 390 && mouseY > 400 && mouseY < 700) {
    mode = GAME;
    intro.pause();
    intro.rewind(); 
    AI = true;
  }
  //2 player
  if (mouseX > 400 && mouseX < 700 && mouseY > 400 && mouseY <500) {
    mode = GAME;
    intro.pause();
    intro.rewind(); 
    AI = false;
  }
}
