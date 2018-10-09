import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

Pendulum pendulum1;
Pendulum pendulum2;
Pendulum pendulum3;
Pendulum pendulum4;
Pendulum pendulum5;
Dedo dedo;

PImage fondo, seleccion, earth, marte, saturn, moon, space;
int pan;
float grav;
 PImage mars2;
   
 PImage tierra2;
   
 PImage moon2;
   
 PImage sat2;
  


void setup() {
  size(1080,720);
  smooth();
  pan = 0;
  grav = 0;
  fondo = loadImage("inicio.png"); 
  seleccion = loadImage("seleccion.png");
  earth = loadImage("Pantalla tierra.png"); 
  marte = loadImage("Pantalla mars.png"); 
  saturn = loadImage("Pantalla sat.png");
  moon = loadImage("Pantalla moon.png"); 
  space = loadImage("space.png"); 
  mars2 = loadImage("mars.png");
  tierra2 = loadImage("Tierra.png");
  moon2 = loadImage("moon.png");
  sat2 = loadImage("sat.png");

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
    
    
    
    pendulum1 = new Pendulum(300,300,300);
    pendulum2 = new Pendulum(400,300,400);
    pendulum3 = new Pendulum(500,300,500);
    pendulum4 = new Pendulum(600,300,600);
    pendulum5 = new Pendulum(700,300,700);
  
    
    dedo = new Dedo();

}



void draw(){

  background(255);
  box2d.setGravity(0,grav);
    box2d.step();
  
  image (fondo,0,0);
  
  if (pan==1){
    image (seleccion,0,0);
    image (mars2,100,250);
    image (tierra2,450,450);
    image (moon2,600,400);
    image (sat2,740,200);
  }
  
  if (pan==2){
    image (marte,0,0);
    grav = -25.9;
    pendulum1.display();
  pendulum2.display();
  pendulum3.display();
  pendulum4.display();
  pendulum5.display();
  dedo.update(mouseX,mouseY);
  }
  
  if (pan==3){
    image (earth,0,0);
    grav = -68.6;
    pendulum1.display();
  pendulum2.display();
  pendulum3.display();
  pendulum4.display();
  pendulum5.display();
  dedo.update(mouseX,mouseY);
  }
  
  if (pan==4){
    image (moon,0,0);
    grav = -11.2;
  pendulum1.display();
  pendulum2.display();
  pendulum3.display();
  pendulum4.display();
  pendulum5.display();
  dedo.update(mouseX,mouseY);
  }
  
  if (pan==5){
    image (saturn,0,0);
    grav = -72.8;
    pendulum1.display();
  pendulum2.display();
  pendulum3.display();
  pendulum4.display();
  pendulum5.display();
  dedo.update(mouseX,mouseY);
  }
  
  
  
  
  
  
  

  /*pendulum1.display();
  pendulum2.display();
  pendulum3.display();
  pendulum4.display();
  pendulum5.display();
  dedo.update(mouseX,mouseY);
  //pantalla.display();*/

}

void mouseReleased() {
  dedo.destroy();
}

void mousePressed() {
  
  switch(pan) {
                    case 0: 
                         if(mousePressed && mouseX>420 && mouseX<670){
                           if (mouseY>450 && mouseY<550){
                             pan = 1;
                             mousePressed=false;
                           }
                           }
                      break;  
                      
                      case 1: 
                       
                           if(mousePressed && mouseX>100 && mouseX<200){
                           if (mouseY>250 && mouseY<350){
                             pan = 2;
                             mousePressed=false;
                           }
                           }
                           
                           
                           if(mousePressed && mouseX>450 && mouseX<550){
                           if (mouseY>450 && mouseY<550){
                             pan = 3;
                             mousePressed=false;
                           }
                           }
                           
                           
                           if(mousePressed && mouseX>600 && mouseX<650){
                           if (mouseY>400 && mouseY<450){
                             pan = 4;
                             mousePressed=false;
                           }
                           }
                           
                           
                           if(mousePressed && mouseX>740 && mouseX<890){
                           if (mouseY>200 && mouseY<350){
                             pan = 5;
                             mousePressed=false;
                           }
                           }
                       
                      break; 
                      case 2: 
                         if ((pendulum1.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum1.mas1));
  }
  if ((pendulum2.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum2.mas1));
  }
  if ((pendulum3.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum3.mas1));
  }
  if ((pendulum4.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum4.mas1));
  }
  if ((pendulum5.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum5.mas1));
  }
                      break;  
                      case 3: 
                         if ((pendulum1.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum1.mas1));
  }
  if ((pendulum2.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum2.mas1));
  }
  if ((pendulum3.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum3.mas1));
  }
  if ((pendulum4.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum4.mas1));
  }
  if ((pendulum5.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum5.mas1));
  }
                      break; 
                      case 4: 
                         if ((pendulum1.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum1.mas1));
  }
  if ((pendulum2.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum2.mas1));
  }
  if ((pendulum3.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum3.mas1));
  }
  if ((pendulum4.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum4.mas1));
  }
  if ((pendulum5.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum5.mas1));
  }
                      break; 
                      case 5: 
                         if ((pendulum1.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum1.mas1));
  }
  if ((pendulum2.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum2.mas1));
  }
  if ((pendulum3.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum3.mas1));
  }
  if ((pendulum4.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum4.mas1));
  }
  if ((pendulum5.mas1).contains(mouseX, mouseY)) {
    dedo.bind(mouseX,mouseY,(pendulum5.mas1));
  }
                      break; 
                      
                  }
  
  
  
}
  
