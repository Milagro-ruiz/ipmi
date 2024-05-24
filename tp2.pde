//Anahi MIlagro Soledad Ruiz Legajo:88221/8
//comision 5 Docente:Tobias
PImage fondoinicial, imagen01, imagen02, imagen03;
int pantalla, tiempo, suma;

PFont mifuente;
float posYTexto1,posXTexto1 = 50; 
float posYTexto2,posXTexto2= 50;
float posYTexto3, posXTexto3=50;

void setup() {
  size(640, 480);
 
  mifuente = createFont("Super Ocean Personal Use.ttf", 15);
  
  tiempo = 1;
  pantalla = 0;
  suma = 5;

  // Cargar imágenes
  fondoinicial = loadImage("fondo.JPG.jpg");
  imagen01 = loadImage("imagen01.JPG.jpg");
  imagen02 = loadImage("imagen02.JPG.jpg");
  imagen03 = loadImage("imagen03.JPG.jpg");

}

void draw() {
  background(0); 

  if (pantalla == 0) {
    // Pantalla de inicio
    image(fondoinicial, 0, 0, width, height);
    if (tiempo >= 300) {
      tiempo = 0;
       pantalla = 1; // Cambio a la pantalla 1
      // Reinicia las posiciones de los textos al cambiar de pantalla
      posXTexto1 = width / 2; 
      posYTexto1 = height / 2;
    }
  } else if (pantalla == 1) {
    // Pantalla 1 (imagen01)
    image(imagen01, 0, 0, width, height);
    textSize(15);
     textFont(mifuente);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Erase una vez, en un prado tranquilo vivía un diminuto ratón llamado Milo.\nEra un ratón curioso y aventurero siempre ansioso por explorar\n el mundo que lo rodeaba", posXTexto1, posYTexto1);
    posYTexto1 += 0.5;
    if (posYTexto1 > height) posYTexto1 = -50; // Reinicia la posición vertical del texto si sale de la pantalla
    if (tiempo >= 300) {
      tiempo = 0;
      pantalla = 2; // Cambio a la pantalla 2
         // Reinicia las posiciones de los textos al cambiar de pantalla
      posXTexto2 = width / 2; 
      posYTexto2 = height / 2;
      }
  } else if (pantalla == 2) {
    // Pantalla 2 (imagen02)
    image(imagen02, 0, 0, width, height);
    textSize(15);
    fill(0,0,247);
    textAlign(CENTER, CENTER);
    text("Una mañana, Milo buscaba comida y de repente escuchó \n un ruido fuerte y aterrador. ¡Era un gato! El corazón de Milo se aceleró\n con miedo mientras se alejaba lo más rápido que podía", posXTexto2, posYTexto2);
    posYTexto2 += 0.5;
    if (posYTexto2 > height) posYTexto2 = -50; // Reinicia la posición vertical del texto si sale de la pantalla
    if (tiempo >= 300) {
      tiempo = 0;
      pantalla = 3; // Cambio a la pantalla 3
      // Reinicia las posiciones de los textos al cambiar de pantalla
      posXTexto3 = width / 2; 
      posYTexto3 = height / 2;
    }
  } else if (pantalla == 3) {
    // Pantalla 3 (imagen03)
    image(imagen03, 0, 0, width, height);
    textSize(15);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Después de un tiempo, Milo finalmente encontró un lugar seguro \n Para descansar sintió calma... Fin", posXTexto3, posYTexto3);
    posYTexto3 += 0.5;
    if (posYTexto3 > height) posYTexto3 = -50; // Reinicia la posición vertical del texto si sale de la pantalla

    // Botón rectangular para reiniciar en la parte inferior
    fill(2, 0, 201);
    rect(width/2 - 100, height - 75, 200, 50); // Posicionado en la parte inferior
    textSize(24);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width/2, height - 50); // Posicionado en la parte inferior

    // Lógica para reiniciar
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height - 75 && mouseY < height - 25 &&mousePressed) {
      pantalla = 0; // Vuelve a la pantalla inicial
      tiempo = 0; // Reinicia el tiempo
      // Reinicia las posiciones de los textos al reiniciar
      posXTexto1 = width / 2; 
      posYTexto1 = height / 2;
      posYTexto2 = height / 2;
      posYTexto3 = height / 2;
    }
  }

  // Incrementa el tiempo
  tiempo += suma;
}

   
