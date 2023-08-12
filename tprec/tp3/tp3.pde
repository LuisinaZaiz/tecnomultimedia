//Luisina Zaiz
//Legajo 92716/7

int estado;
int c = 12;
PImage[] pantalla = new PImage[c];
boolean apreteBotonMenu;

void setup() {
  estado = 0;
  size(600, 600);
  apreteBotonMenu = true;
  for (int i = 0; i < c; i++) {
    pantalla[i] = loadImage("imagen-" + i + ".jpg");
  }
}

void TextoP(String Texto, int tam, int PosTX, int PosTY) {
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(tam);
  text(Texto, PosTX, PosTY);
}

void draw() {
  switch (estado) {
    case 0:
      image(pantalla[estado], 0, 0);
      TextoP("INICIO", 75, 300, 50);
      TextoP("Pulse en cualquier lugar para avanzar", 20, 300, 500);
      TextoP("Presione a la izquierda o derecha para elegir el destino", 15, 300, 520);
      if (dist(mouseX, mouseY, 100, 100) <= 50) {
        fill(255, 82, 163);
        estado = 12;
      } else {
        fill(255, 82, 163);
      }
      circle(100, 100, 100);
      TextoP("Créditos", 20, 100, 100);
      break;
    case 1:
      image(pantalla[estado], 0, 0);
      TextoP("Mision, llegar a Rapunzel sin que la madre apareca", 25, 300, 80);
      TextoP("Continuar", 15, 540, 550);
      break;
    case 2:
      image(pantalla[estado], 0, 0);
      TextoP("Click para irte", 15, 120, 550);
      TextoP("Click para hacer como si nada", 15, 480, 550);
      TextoP("Facil, llegaste, pero...vigilaste bien?", 20, 300, 450);
      break;
    case 3:
      image(pantalla[estado], 0, 0);
      TextoP("No importa, Rapunzel te obliga a quedarte :d", 25, 300, 80);
      break;
    case 4:
      image(pantalla[estado], 0, 0);
      TextoP("FALLASTE, la madre te asesino facilmente", 25, 300, 500);
      break;
    case 5:
      image(pantalla[estado], 0, 0);
      TextoP("Tus amigos te invitan a salir, dejaras a Rapunzel sola?", 25, 300, 80);
      TextoP("Click para irte", 15, 120, 550);
      TextoP("Click para quedarte con ella", 15, 480, 550);
      break;
    case 6:
      image(pantalla[estado], 0, 0);
      TextoP("Rapunzel te saco de una patada", 25, 300, 500);
      TextoP("Cerro las puertas del castillo para siempre", 25, 300, 520);
      break;
    case 7:
      image(pantalla[estado], 0, 0);
       TextoP("No tardo nada en encontrarte reemplazo", 25, 300, 50);
       TextoP("Si, su camaleon", 25, 320, 70);
      break;
    case 8:
      image(pantalla[estado], 0, 0);
       TextoP("Rapunzel esta feliz, todo va bien....por ahora", 25, 300, 500);
      break;
    case 9:
      image(pantalla[estado], 0, 0);
      TextoP("Espera! Que es eso?", 25, 320, 70);
      break;
    case 10:
      image(pantalla[estado], 0, 0);
      TextoP("Ha llegado su madre en el momento mas inesperado..", 25, 300, 50);
      TextoP("Click para que la madre lo rechace", 15, 120, 550);
      TextoP("Click para que la madre lo acepte", 15, 480, 550);
      break;
    case 11:
      image(pantalla[estado], 0, 0);
      TextoP("No importa tu eleccion, moriras de todas formas", 25, 300, 50);
      break;
    case 12: // CREDITOS
      image(pantalla[0], 0, 0);
      // BOTONES
      if (dist(mouseX, mouseY, 300, 525) <= 50) {
        fill(255, 82, 163);
        estado = 0;
      } else {
        fill(255, 82, 163);
      }
      circle(300, 525, 100);
      TextoP("Menu", 30, 300, 525);
      TextoP("Amor prohibido", 25, 300, 100);
      TextoP("Luisina Zaiz", 20, 300, 140);
      TextoP("Legajo 92716/7", 20, 300, 160);
      TextoP("Comisión 2", 20, 300, 180);
      TextoP("Imágenes: Película Enredados", 20, 300, 240);
      TextoP("Textos: ChatGPT", 20, 300, 260);
      break;
  }
}

void mousePressed() { 
  if (estado == 0) {
    estado = 1;
  } else if (estado == 1) {
    estado = 2;
  } else if (estado == 2) {
    if (mouseX < width / 2) {  // mitad izquierda de la pantalla
      estado = 3;
    }
    if (mouseX > width / 2) {  // mitad derecha de la pantalla
      estado = 4;
    }
  } else if (estado == 4) {
    estado = 12;
  } else if (estado == 3) {
    estado = 5;
  } else if (estado == 5) {
    if (mouseX < width / 2) {  // mitad izquierda de la pantalla
      estado = 6;
    }
    if (mouseX > width / 2) {  // mitad derecha de la pantalla
      estado = 8;
    }
  } else if (estado == 6) {
    estado = 7;
  } else if (estado == 8) {
    estado = 9;
  } else if (estado == 9) {
    estado = 10;
  } else if (estado == 10) {
    estado = 11;
  } else if (estado == 11) {
    estado = 12;
  } else if (estado == 7) {
    estado = 12;
  }
}
