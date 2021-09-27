void game() {
  background(0);
  introtheme.pause();
  theme.play();

  timer = timer + 0.01666;
  fill(255);
  rect(0, 0, (8-timer)/8*width, 20);
  if (timer >= 8) mode = end; state = lose;

  // score
  fill(255);
  textSize(120);
  text("SCORE: " + score, width/2, height/8);

  // gun
  image(rgun, width - 60, gh, 60, 37);
  image(wgun, 0, gh, 60, 37);
  if (up == true && gh >= 10) gh = gh - gs;
  if (down == true && gh <= height - 10) gh = gh + gs;

  // FIRE
  if (left == true && right == false) {
    image(rgunf, 60, gh - 3, 51, 15);
    gunsound();
  }
  if  (right == true && left == false) {
    image(gunf, width - 112, gh - 3, 51, 15);
    gunsound();
  }

  // balloon
  bs = bs * 1.001;
  int s = 0;
  while (s < numBalloons) {
    MyBalloons[s].show();
    MyBalloons[s].act();
    s++;
  }
}

void gunsound() {
  gunshotsound.play();
  gunshotsound.rewind();
}
