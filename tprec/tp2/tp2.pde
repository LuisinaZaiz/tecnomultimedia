//Luisina Zaiz
//Legajo 92716/7

float angle;
float x, y;
color c;
PImage img;
boolean llam;



void setup() {
  size(800, 400);
  llam=false;
  c = color(255, 0, 0);
   reset(c);
  fill(c);
  noStroke();
  img = loadImage("Data/Referencia Ilusion.jpg");
   angle=5;
  x=150;
  y=150;
}



void reset(color c) {
  angle = 0;
  x = 60;
  y = height / 2;

  fill(c);
}


float angulo(float inc){
 float ang=0;
 
    ang = angle  + inc;  
  return ang;
}


void efect(){
 
   angle = angulo(0.05);
  x += sin(angle) * 5;
  y += cos(angle) * 5;
 
}




void draw() {
  background(0);
   

 
 if(llam){
   efect();
 }
    image(img, 0, 0);
   
      translate(600, 200);
  blendMode(DIFFERENCE);
  fill(c);
  for (int a = 0; a < 360; a += 45) {
    rotate(radians(a));
    for (int i = 0; i < 100; i++) {
      scale(0.99);
      rotate(radians(angle * 2));
      ellipse(x, y, 100, 80);
    }
  }
   
   
 

}




void keyPressed() {
  if (key == 'R' || key == 'r') {
    c= color(255,0,0);
    angle=5;
    x=150;
    y=150;
    llam=false;
  }
}


void mousePressed(){
 
    c = color(random(255), random(255), random(255));
    llam=true;
}
