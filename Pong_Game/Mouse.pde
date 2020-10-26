void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }


  //pausing the game
  if (mouseX > 340 && mouseX < 460 && mouseY > 0 && mouseY < 50) {
    intro.pause();

    mode = PAUSE;
    System.out.print("pause works :D");
 // }
    //if (mode == PAUSE && mouseX > 340 && mouseX < 460 && mouseY > 0 && mouseY < 50) {
    //intro.play();
    //System.out.print("play works :D");

    //mode = PAUSE;
  }
}

void mouseClicked() {
  if (mouseX > 340 && mouseX < 460 && mouseY > 0 && mouseY < 50) {
    intro.play();
    System.out.print("play works :D");
    mode = GAME;
  }
}
