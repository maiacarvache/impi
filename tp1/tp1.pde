
PImage img;
void setup()
{
  background(250);
size (800,400);
img = loadImage("autorretrato.jpg");
image(img,0,0,400,400);
}
void mouseClicked() {
  println("X: " + mouseX + " | Y: " + mouseY);
}

void draw(){
  image(img, 0,0, 400, 400);
  
  //Fondo derecho del cabello
  fill(20,11,9);
  ellipse(645,113,50,50);
  ellipse(667,134,50,50);
  ellipse(674,166,70,70);
  ellipse(675,200,80,80);
  ellipse(682,234,85,70);
  ellipse(665,276,90,90);
  
  fill(28,13,12);
  ellipse(684,207,40,40);
  ellipse(687,240,60,50);
  ellipse(684,277,50,40);
  
  //Fondo izquierdo del cabello
  fill(22,11,9);
  ellipse(533,276,90,90);
  ellipse(520,234,90,70);
  ellipse(525,200,80,80);
  ellipse(530,166,70,70);
  ellipse(560,113,50,50);
  ellipse(535,134,50,50);
  ellipse(607,100,60,60);
  
   fill(28,13,12);
  ellipse(523,207,50,40);
  ellipse(519,240,60,50);
  ellipse(521,277,50,40);
  
  //Cuello
  fill(175,145,115);
  noStroke();
  rect (570,280,60,50);
  
  fill(28,13,12);
  ellipse(545,309,60,60);
  ellipse(655,309,60,60);

  //Cabeza
  stroke(28,13,12);
  strokeWeight(2);
  fill(175,145,115);
  ellipse(600,200,150,200);
 
 //Ojos 
  fill(255);
  noStroke();
  ellipse(570,180,30,20);
  ellipse(630,180,30,20);
  fill(0);
  ellipse(570,180,15,20);  
  ellipse(630,180,15,20);
  fill(255);
  ellipse(571,178,2,2);
  ellipse(629,178,2,2);
  
//Nariz
stroke(161, 121, 90);
strokeWeight(10);
line(600, 197, 600, 220);
noStroke();
fill(161, 121, 90);
ellipse(600,220,25,15);

//Boca

fill(166, 91, 99);
arc(600,245,50,20, PI, TWO_PI);
arc(600,245,50,30,0,PI);

//Cejas
noFill();
stroke(28,13,12);
strokeWeight(5);
arc(570, 160, 35, 10, PI, TWO_PI);
arc(630, 160, 35, 10, PI, TWO_PI);
 noStroke(); 
 
 //Cabello lado derecho
 fill(28,13,12);
 ellipse(622,98,30,30);
 ellipse(635,112,30,30);
 ellipse(650,126,30,30);
 ellipse(660,142,30,30);
 ellipse(671,162,30,30);
  ellipse(673,182,30,30);
 ellipse(602,89,40,30);
 
 //Cabello lado izquierdo
 ellipse(561,112,25,30);
 ellipse(546,129,30,30);
 ellipse(533,152,30,30);
 ellipse(526,175,30,30);
 
 //Camisa
 fill(10);
noStroke();
triangle(479, 325, 713, 325, 600, 399);

// Lado izquierdo del torso
quad(479,325,532,352,489,400,400,400);

// Lado derecho del torso
quad(713,325,644,352,693,400,752,400);

 //Pecho
ellipse(560,381,110,90);
ellipse(651,390,100,90);

 fill(175,145,115);
quad(538,325,666,325,659,362,543,362);
triangle(543,362,659,362, 600, 399);

fill(28,13,12);
ellipse(538,329,30,30);
ellipse(557,321,30,30);

ellipse(647,315,40,40);
ellipse(664,332,30,30);
ellipse(685,322,30,30);
}


 
