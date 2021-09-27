void keyPressed() {
  if (key == 'w' || keyCode == UP) up = true;
  if (key == 's' || keyCode == DOWN) down = true;
  if (key == 'a' || keyCode == LEFT) left = true;
  if (key == 'd' || keyCode == RIGHT) right = true;
}

void keyReleased() {
  if (key == 'w' || keyCode == UP) up = false;
  if (key == 's' || keyCode == DOWN) down = false;
  if (key == 'a' || keyCode == LEFT) left = false;
  if (key == 'd' || keyCode == RIGHT) right = false;
}
