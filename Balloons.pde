class Balloons {
  float bx, by, ran;
  int num, notnum;

  Balloons() {
    bx = random(width/9, width*8/9);
    by = random(height + 50, height + 800);
    num = int(random(0, 9));
    notnum = int(random(0, 9));
    if  (notnum == num) notnum = int(random(0, 9));
    ran = random(0, 2);
  }

  void show() {
    fill(colors[num]);
    rect(bx, by, 100, 137);
    fill(255);
    textFont(P5);
    textSize(30);
    if (ran > 1) {
      match = true;
      text(words[num], bx + 50, by + 60);
    } else {
      match = false;
      text(words[notnum], bx + 50, by + 60);
    }
    image(balloon, bx, by, 100, 137);
  }

  void act() {
    by = by - bs;

    // reach the end
    if (by < 0) {
      mode = end;
    }  

    // gunshot
    if (gh <= by + 137 && gh >= by) {
      if (left == true && match == false) {
        score++;
        by = height + 100*notnum;
        bx = width*num/9;
        timer = 0;
      } else if (right == true && match == true) {
        score++;
        by = height + 100*notnum;
        bx = width*num/9;
        timer = 0;
      } else if (match == true && left == true) mode = end;
      else if (match == false && right == true) mode = end;
    }
  }
}
