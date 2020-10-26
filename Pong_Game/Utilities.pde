void reset() {
  leftscore = 0;
  rightscore = 0;
  lefty = 300;
  righty = 300;

}
void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(0);
  } else {
    fill(157, 157, 97);

  }
} //end of void tactile ===
