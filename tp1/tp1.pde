PImage  pera;
void setup (){
  size(800,400);
  background(255);
  pera = loadImage("pear-single-green.jpg");
 image(pera,0,0,400,400);


}
void draw(){
  
fill(209,226,49);
noStroke();
circle(619,278,200);
circle(619,160,140);
fill(155,120,119);
rect(615,50,10,40);

fill(7,162,23);

rect(520,30,90,40);
fill(129,122,64);

fill(162,143,72);
rect(609,70,7,3);


}
