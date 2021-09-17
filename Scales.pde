PShape s;
int wC = 1000;
int hC = 1000;
int big = 5;

void setup() {
  size(1000, 1000);
  // The file "dinosaur-claw.svg" must be in the data folder
  // of the current sketch to load successfully
  s = loadShape("dinosaur-claw.svg");
}

void draw() {
  //add a background gradient
  gradientBackground();
  boolean shift = true;
  for (int i=(hC+100)*big; i>-100*big; i-=(30*big)) {
    for (int j=-100*big; j<(wC+100)*big; j+=(10*big)) {
      if (shift==true) {
        scale (i, j, 0);
      } else {
        scale (i, j, 15*big);
      }
    }
    if (shift==true) {
      shift = false;
    } else {
      shift = true;
    }
  }
  noLoop();
}
void scale(int i, int j, int d) {
  shape(s, j+d, i, 20*big, 40*big);
}

void gradientBackground() {
  for (int k = 0; k<1001; k+=10) {
    for (int m = 0; m<1001; m+=10){
    noStroke();
    fill(200-(m/10)-(k/10), 250, 100+m/10+k/10);
    rect(m, k, 10, 10);
    }
  }
}
