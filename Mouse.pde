void mousePressed() {
  if (mode == title) {
    mode = game;
    timer = 0;
    int s = 0;
    while (s < numBalloons) {
      MyBalloons[s] = new Balloons();
      s++;
    }
    score = 0;
    bs = 1;
    introtheme.rewind();
  }
  if (mode == end) {
    ux = 0;
    mode = title;
    wintheme.rewind();
    losetheme.rewind();
    theme.rewind();
  }
}

void mouseReleased() {
}
