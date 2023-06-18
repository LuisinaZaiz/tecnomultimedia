//Video Link Youtube: https://www.youtube.com/watch?v=Nms8JnTH7xU

float angle;
float x, y;
color c;
PImage img;

void setup() {
  size(800, 400);
  reset();
  c = color(random(255), random(255), random(255));
  fill(c);
  noStroke();
 
  img = loadImage("Data/Referencia Ilusion.jpg");
}

void draw() {
  background(0);
  image(img, 0, height/2 - img.height/2);

  translate(600, 200);
  blendMode(DIFFERENCE);
 
  for (int a = 0; a < 360; a += 45) {
    rotate(radians(a));
    for (int i = 0; i < 100; i++) {
      scale(0.99);
      rotate(radians(angle * 2));
      ellipse(x, y, 100, 80);
    }
  }

  angle += 0.05;
  x += sin(angle) * 5;
  y += cos(angle) * 5;
}

void keyPressed() {
  if (key == 'R' || key == 'r') {
    reset();
  }
}

void reset() {
  angle = 0;
  x = 60;
  y = height / 2;
  c = color(random(255), random(255), random(255));
  fill(c);
}
