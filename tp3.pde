//Comi 5 Alumna:Ruiz Anahi Milagro Legajo:88221/8
//Docente Tobias
//https://youtu.be/YRudlYAom7E  
//le pido disculpas por no mostrar mi cara, se me es un poco dificil grabarme  

PImage ilusion;
float mouseXPrev = 0;
boolean resetColors = false;

float distancia = 10;
float centroX = width-100; // Ajusto el centro hacia la izquierda
float centroY = height/4; // Ajusto el centro hacia abajo
float tamanoRect = 400; // Tamaño del rectángulo igual al de la pantalla
boolean NEGRO = true; // Variable para alternar entre blanco y negro

void setup() {
  size(800, 400);  
  background(0);
  rectMode(CENTER);
  ilusion = loadImage("ilusion.ng.jpg");
}

void draw() {
  background(255);
  image(ilusion, 0, 0, 400, 400);
  println(mouseX, mouseY);

  float distancia = 10;
  float centroX = width - 100; // Ajusto el centro hacia la izquierda
  float centroY = height / 4; // Ajusto el centro hacia abajo
  float tamanoRect = 400; // Tamaño del rectángulo igual al de la pantalla

  for (int i = 0; i < 21; i++) {
    float ancho = tamanoRect - i * distancia * 2;
    float alto = tamanoRect - i * distancia * 2;

    float posX = centroX - ancho / 4;
    float posY = centroY + alto / 4;

    color colorRectangulo = getColorForRectangle(i, posX, ancho);
    drawRectangle(posX, posY, ancho, alto, colorRectangulo);
  }
}


//Función que retorna un color determinado

color getColorForRectangle(int i, float posX, float ancho) {
  color colorRectangulo;

  if (resetColors) {
    if (i % 2 == 0) {
      colorRectangulo = color(255); // Blanco
    } else {
      colorRectangulo = color(0); // Negro
    }
  } else if (mouseXPrev != mouseX) {
    int cambiarColor = int(random(10));
    if (cambiarColor == 0 && mouseX > posX - ancho / 2 && mouseX < posX + ancho / 2) {
      colorRectangulo = color(random(255), random(255), random(255)); // Color aleatorio
    } else {
      if (i % 2 == 0) {
        colorRectangulo = color(0); // Blanco
      } else {
        colorRectangulo = color(255); // Negro
      }
    }
  } else {
    if (i % 2 == 0) {
      colorRectangulo = color(0); // Blanco
    } else {
      colorRectangulo = color(255); // Negro
    }
  }

  return colorRectangulo;
}

//Función que no retorna un valor y dibuja el rectángulo:
void drawRectangle(float posX, float posY, float ancho, float alto, color colorRectangulo) {
  fill(colorRectangulo);
  rect(posX, posY, ancho, alto);
}

//Función que no retorna un valor y maneja resetColors en mouseClicked()
void mouseClicked() {
  resetColors = !resetColors; // Cambia el estado de resetColors al hacer clic
}
 
 
