PImage img1, img2, img3, img4;
int c;
int marcaEnElTiempo;
int estado;
int currentImage = 0;
float posX = 0;  
float posY = 0;  
float vel = 0;
float trans = 0;
int x, y, d;
color bg;
float distancia, radio;
int colorBtn;
boolean reiniciar = false;

String t1 = "Los caballos se destacan por su velocidad,\n ductilidad y elegancia de desplazamiento,\n es así que algunos son utilizados en competiciones de saltos, \n carreras y exhibiciones.";
String t2 = "Los caballos salvajes, escasos debido a la caza \n y a la constante persecución del hombre,\n se encuentran en desiertos,\n sabanas y praderas de Asia y África.";
String t3 = "En la actualidad los caballos\n  se utilizan para diferentes actividades deportivas \n gracias a sus especiales condiciones, \n incluyendo el salto, la hípica y el polo.";
String t4 = "Fin.";
void setup() {
  size( 640, 480 ); 
  textAlign( CENTER, CENTER );
  textSize( 50 );
  fill(255);
  estado = 0;
  x = 50;
  y = 350;
  d = 70;
  
  bg = color( 255 );
}

void draw(){

  img1 = loadImage("Data/Caballo1.jpg");
  img2 = loadImage("Data/Caballo2.jpg");
  img3 = loadImage("Data/Caballo3.jpg");
  img4 = loadImage("Data/Caballo4.jpg");
  int diferenciaTemporal = millis() - marcaEnElTiempo;
  
 {
  if (reiniciar) {
    setup();
    reiniciar = false;
  }
 
 distancia = dist(x, y, mouseX, mouseY);
  radio = d / 2;

  if ( distancia < radio ) {
    //fill( 180 );
    colorBtn = 180;
    if ( mousePressed ) {
      colorBtn = 20;
    }
  } else {
    colorBtn = 255;
  }

  //Boton
  
  fill( colorBtn );
  circle( x, y, d );
  line( x, y, mouseX, mouseY);
 
  //Maquina de estados
  
  if( estado == 0 ){ 
    background( 0 );
    text("Los Caballos", 320, 240);
    //
    if( diferenciaTemporal >= 5*1000 ){ 
      estado = 1;
      marcaEnElTiempo = millis();
    }
    //
  }else if (estado == 1 ){
    image(img1,0,0);
    textSize(20);
    text(t1, frameCount*2, 340, 370);
   
    fill(255);
    //
    if( diferenciaTemporal >= 10*1000 ){  
      estado = 2;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 2 ){
    image(img2,0,0);
    textSize(20);
    text(t2, frameCount*1, 340, 370);
    fill(255);
    //
    if( diferenciaTemporal >= 5*1000 ){ 
      estado = 3;
      marcaEnElTiempo = millis();      
    }   
    //
  }else if (estado == 3 ){
    image(img3,0,0);
    textSize(20);
    text(t3, frameCount*1, 340, 370);
    fill(255);
    //
    if( diferenciaTemporal >= 5*1000 ){ 
      estado = 4;
      marcaEnElTiempo = millis();      
    }   
    //
  }else{
    image(img4,0,0);
    textSize(50);
    text(t4, 550, 390);
  }
  
  println( millis() + " - " + marcaEnElTiempo + " = " + diferenciaTemporal );
 }
}

void keyPressed(){
  if( key == ' ' ){
    marcaEnElTiempo = millis();
  }
}

{
  if (key == ' ') {
    reiniciar = true;
  }
}
void mousePressed(){
  if ( distancia < radio ) {
    estado = 0;
  }

if ( distancia < radio ) { 
    bg = color( random(255), random(255), random(255) );
  }
}
 
