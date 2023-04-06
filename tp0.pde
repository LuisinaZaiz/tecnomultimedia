PImage imagen;
void setup(){
  imagen = loadImage("Data/Koala.jpg");
  size(800,400);
  background(172,194,196);
}
void draw(){
  image (imagen, 400, 0, 400, 400);
  //orejas
  stroke(155,143,123);
  fill(203,190,177);
  ellipse(120,80,90,150);
  ellipse(280,80,90,150);
  fill(234,206,225);
  noStroke();
  ellipse(275,85,60,110);
  ellipse(125,85,60,110);
  //brazos
  
  //cuerpo
  stroke(155,143,123);
  fill(203,190,177);
  ellipse(200,260,170,230);
     //cuerpo (sombra)}
  fill(227,216,204);
  noStroke();
  ellipse (200,290,100,140);
    //cabeza
  fill(203,190,177);
  stroke(155,143,123);
  ellipse(200,130,150,230);
  //mejillas
  fill(219,35,94);
  ellipse(160,175,25,30);
  ellipse(240,175,25,30);
  //ojos
  fill(0);
  ellipse(170,150,20,40);
  ellipse(230,150,20,40);
  fill(255);
  ellipse(170,145,10,20);
  ellipse(230,145,10,20);
  ellipse(165,160,8,12);
  ellipse(235,160,8,12);
  //boca
  stroke(0);
  line(200,190,200,215);
  //hocico 
  fill(108,86,61);
  noStroke();
  ellipse(200,165,30,55);
  fill(142,123,103);
  ellipse(205,155,10,20);
  fill(0);
  //patas
  fill(203,190,177);
  stroke(155,143,123);
  ellipse(135,320,70,120);
  ellipse(270,320,70,120);
  fill(234,206,225);
  noStroke();
  ellipse(138,320,50,90);
  ellipse(268,320,50,90);
  
  
  
}
