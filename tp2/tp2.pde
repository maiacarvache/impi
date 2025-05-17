// tp2
// Maia Carvache
// Comision 3

int variable, pantalla, mitiempo;
PImage imagenp, imagenuno, imagendos, imagentres;
String estado;
String mitexto;
int e;
PFont texto;
int estadoActual = 1;
PFont textoBoton;
PFont textopantalla2; 
PFont textopantalla3; 
PFont textopantalla4;
int tiempoEnPantalla2;
PFont texto2;

String textoPantalla2 = "La instalación digital interactiva \n Resonating Microcosms of Life – Solidified Light Colour,\n está compuesta por muchísimos elementos \n en forma de óvalos que cambian de color,\n brillo y emiten sonidos, \n según los movimientos de las personas.";

int tiempoEnPantalla3;
String textoPantalla3 = "El movimiento de cada ovalo en particular,\n afecta a todas las figuras en general, \n se crea una cadena de cambios de luz y sonido.\n Se basa en 5 conceptos fundamentales: \n la relación con las personas, \n la relación con los fenómenos naturales,\n la fiscalidad,\n la continuidad y los nuevos colores.";

String textoPantalla4 = "Team Lab pretende explorar \n la relación entre el yo y el mundo,\n y las nuevas percepciones a través del arte. \n Pretenden trascender los límites \n de nuestra percepción del mundo, \n de la relación con el mundo, \n y de la continuidad del tiempo.";

int botonAncho = 150;
int botonAlto = 50;
int botonX;
int botonY;
int letraVisible = 0;
int tiempoEsperaPantalla2 = 0;
int duracionEsperaPantalla2 = 200;
float velocidadDesplazamiento = 5.0;
float desplazamientoPantalla3;
float velocidadAnimacionPantalla3 = 5.0;
int tiempoEsperaPantalla3 = 0;
int duracionEsperaPantalla3 = 150;
float desplazamientoPantalla4; 
int tiempoEnPantalla4 = 0; 
float velocidadAnimacionPantalla4 = 10.0;

void setup() {
  size(640, 480);
  background(255);

  imagenp = loadImage("imagenp.jpg");
  imagenuno = loadImage("imagenuno.jpg");
  imagendos = loadImage("imagendos.jpg");
  imagentres = loadImage("imagentres.jpg");

  texto = loadFont("SnapITC-Regular-48.vlw");
  textoBoton = loadFont("SegoeUI-Light-48.vlw");
  mitexto = "Microcosmos resonantes de la vida \n– El color de la luz";

  textopantalla2 = loadFont("CooperBlack-48.vlw");
  textopantalla3 = loadFont("CooperBlack-48.vlw");
  textopantalla4 = loadFont("CooperBlack-48.vlw");

  textAlign(CENTER, CENTER);
  estado = "pantalla-1";
  e = 1;
}

void draw() {
  variable = frameCount;

  // Pantalla 1
  if (estadoActual == 1) {
    image(imagenp, 0, 0, width, height);
    textFont(texto);
    textSize(30);
    fill(255);
    text(mitexto, 320, variable % (height + 40));
    fill(255, 100);
    stroke(255);
    strokeWeight(2);
    circle(550, 340, 90);
    textFont(textoBoton);
    textSize(24);
    fill(255);
    text("CLICK", 550, 340);
    textAlign(CENTER, CENTER);
  }

  // Pantalla 2
  else if (estadoActual == 2) {
    image(imagenuno, 0, 0, width, height);
    textFont(textopantalla2);
    textSize(21);
    fill(255);
    textAlign(CENTER, CENTER);

    String textoActual = textoPantalla2.substring(0, letraVisible);
    text(textoActual, width / 2, height / 2);

    if (frameCount % 2 == 0 && letraVisible < textoPantalla2.length()) {
      letraVisible++;
      tiempoEsperaPantalla2 = 0;
    } else if (letraVisible == textoPantalla2.length()) {
      tiempoEsperaPantalla2++;
    }

    if (tiempoEsperaPantalla2 > duracionEsperaPantalla2 && letraVisible == textoPantalla2.length()) {
      estadoActual = 3;
      tiempoEnPantalla3 = frameCount;
      desplazamientoPantalla3 = 0;
    }
  }

  // Pantalla 3
  else if (estadoActual == 3) {
    image(imagendos, 0, 0, width, height);
    textFont(textopantalla3);
    textSize(23);
    fill(255);
    textAlign(LEFT, CENTER);

    float inicioX = -textWidth(textoPantalla3);
    float destinoX = width / 10;
    float posicionX = inicioX + desplazamientoPantalla3;

    text(textoPantalla3, posicionX, height / 2);

    if (posicionX < destinoX) {
      desplazamientoPantalla3 += velocidadAnimacionPantalla3;
    } else {
      tiempoEsperaPantalla3++;
    }

    if (tiempoEsperaPantalla3 > duracionEsperaPantalla3) {
      estadoActual = 4;
      tiempoEnPantalla4 = frameCount;
      desplazamientoPantalla4 = -textWidth(textoPantalla4);
    }
  }

  // Pantalla 4
  else if (estadoActual == 4) {
    background(0);
    image(imagentres, 0, 0, width, height);
    textFont(textopantalla4);
    textSize(25);
    fill(255);
    textAlign(LEFT, CENTER);

    float inicioX = width + textWidth(textoPantalla4);
    float destinoX = 40;
    float posicionX = inicioX - desplazamientoPantalla4;

    text(textoPantalla4, posicionX, height / 2);

    if (posicionX > destinoX) {
      desplazamientoPantalla4 += velocidadAnimacionPantalla4;
    }

    // Botón de reinicio
    botonX = width / 2 - botonAncho / 2;
    botonY = height - botonAlto - 50;
    fill(150);
    rect(botonX, botonY, botonAncho, botonAlto, 10);

    textFont(textoBoton);
    textSize(24);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
    textAlign(CENTER, TOP);
  }
}

void mousePressed() {
  if (estadoActual == 1) {
    float d = dist(mouseX, mouseY, 550, 340);
    if (d < 45) {
      estadoActual = 2;
      variable = 0;
      tiempoEnPantalla2 = frameCount;
      letraVisible = 0;
      tiempoEsperaPantalla2 = 0;
    }
  }

  else if (estadoActual == 4) {
    if (mouseX > botonX && mouseX < botonX + botonAncho &&
        mouseY > botonY && mouseY < botonY + botonAlto) {
      estadoActual = 1;
      variable = 0;
      letraVisible = 0;
      tiempoEsperaPantalla2 = 0;
      tiempoEnPantalla2 = 0;
      tiempoEnPantalla3 = 0;
      tiempoEsperaPantalla3 = 0;
      desplazamientoPantalla3 = 0;
      desplazamientoPantalla4 = 0;
      tiempoEnPantalla4 = 0;
    }
  }
}
