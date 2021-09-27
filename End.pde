void end() {
  theme.pause();
  if (score >= highest && score > 0) {
    highest = score;
    state = win;
  } else state = lose;
  background(0);
  textFont(pixel);
  textSize(150);
  if (state == win) {
    text("You win!", width/2, height/3);
    wintheme.play();
  } else if (state == lose) {
    text("You lose!", width/2, height/2);
    losetheme.play();
  }
  textSize(60);
  text("Highest score: " + highest, width/2, height*2/3);
  text("Your score: " + score, width/2, height*4/5);
}
