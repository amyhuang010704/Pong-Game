void  gameover() {
  background(yellow);
  intro.pause();
  clapping.play();
  textSize(145);
  fill(198, 198, 120);
  text("GAMEOVER", 5, 200);

  if (leftscore > rightscore) {
    textSize(100);
    fill(red);
    text("RED WINS!!", 130, 300);
  } else {
    textSize(100);
    fill(blue);
    text("BLUE WINS!!", 130, 300);
  }
  //play again button
  if (mouseX > 200 && mouseX < 600 && mouseY > 350 && mouseY < 500) {
    stroke(0);
  } else {
    stroke(198, 198, 120);
  }
  fill(198, 198, 120);
  rect(200, 350, 400, 150);
  fill(0);
  textSize(60);
  text("PLAY AGAIN", 220, 450);
}

void gameoverClicks() {
  if (mouseX > 200 && mouseX < 600 && mouseY > 350 && mouseY < 500) {
    clapping.pause();
    intro.rewind();
    mode = INTRO;
    reset();
    System.out.print("yay");
  }
}
