void title() {
  background(#262626);
  introtheme.play();
  wintheme.pause();
  losetheme.pause();

  // gif
  image(introgif[int(f)], width/2 - 318, height*2/3 - 200, 636, 400);
  f = f + 0.5;
  if (f >= numframes) f = 0;

  image(ugif[int(u)], ux - 51, height - 87, 51, 84);
  if (u < 1.9)u = u + 0.1;
  else u = 0;
  if (ux <= width + 300) ux = ux + 0.5;
  else ux = 0;

  // title
  fill(#FFFFFF);
  textSize(120);
  if (a <= height/4) a++;
  text("PooYan!", width/2, a);
}
