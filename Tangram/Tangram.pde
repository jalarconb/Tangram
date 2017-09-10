 /* COLORES */
  
    color fondo      = color(100, 100, 100);
    color amarillo   = color(255, 255, 0);
    color aguamarina = color(102, 255, 178);
    color naranja    = color(255, 130, 0);
    color azul       = color(50, 180, 245);
    color verde      = color(0, 153, 0);
    color rojo       = color(204, 0, 0);
    color morado     = color(152, 0, 56);
  
 /* TRANSFORMACIONES */
 
   int ctrlMov;
   
   float xTriGrande1 = 0;
   float yTriGrande1 = 0;
   float rTriGrande1 = 0;
   
   float xTriGrande2 = 480;
   float yTriGrande2 = 0;
   float rTriGrande2 = 90;
   
   float xTriMediano = 240;
   float yTriMediano = 480;
   float rTriMediano = 180;
   
   float xTriPequeno1 = 480;
   float yTriPequeno1 = 480;
   float rTriPequeno1 = 180;
   
   float xTriPequeno2 = 120;
   float yTriPequeno2 = 360;
   float rTriPequeno2 = 270;
   
   float xCuadrado = 240; 
   float yCuadrado = 240;
   float rCuadrado = 45;
   
   float xTrapezoide = 0;
   float yTrapezoide = 0;
   float rTrapezoide = 0;


void setup(){
  size(1200, 600);
  noStroke();
}

void draw(){
  
    background(fondo);
    //translate(360,60);
  
 /* FIGURAS */
    
    // Triángulo Grande 1
      pushStyle();
      pushMatrix();
        translate (xTriGrande1, yTriGrande1);
        rotate (radians(rTriGrande1));
        fill (amarillo);
        triangle (0, 0, 480, 0, 240, 240);
      popStyle();
      popMatrix();
    
    // Triángulo Grande 2
      pushStyle();
      pushMatrix();
        translate (xTriGrande2, yTriGrande2);
        rotate (radians(rTriGrande2));
        fill (aguamarina);
        triangle (0, 0, 480, 0, 240, 240);
      popStyle();
      popMatrix();
      
    // Triángulo Mediano
      pushStyle();
      pushMatrix();
        translate (xTriMediano, yTriMediano);
        rotate (radians(rTriMediano));
        fill (naranja);
        triangle (0, 0, 240, 0, 240, 240);
      popStyle();
      popMatrix();
      
    // Triángulo Pequeño 1
      pushStyle();
      pushMatrix();
        translate (xTriPequeno1, yTriPequeno1);
        rotate (radians(rTriPequeno1));
        fill (azul);
        triangle (0, 0, 240, 0, 120, 120);
      popStyle();
      popMatrix();
      
    // Triángulo Pequeño 2
      pushStyle();
      pushMatrix();
        translate (xTriPequeno2, yTriPequeno2);
        rotate (radians(rTriPequeno2));
        fill (verde);
        triangle (0, 0, 240, 0, 120, 120);
      popStyle();
      popMatrix();
      
    // Cuadrado
      pushStyle();
      pushMatrix();
        translate (xCuadrado, yCuadrado);
        rotate (radians(rCuadrado));
        fill (rojo);
        rect (0, 0, sqrt(28800), sqrt(28800));
      popStyle();
      popMatrix();
      
    // Trapezoide
      pushStyle();
      pushMatrix();
        translate (xTrapezoide, yTrapezoide);
        rotate (radians(rTrapezoide));
        fill (morado);
        quad (0, 0, 120, 120, 120, 360, 0, 240);
      popStyle();
      popMatrix();
  
  /* MOVIMIENTO */
  
    // Triángulo Grande 1
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 1)){
        xTriGrande1 += mouseX-pmouseX;
        yTriGrande1 += mouseY-pmouseY;
      }
      
    // Triángulo Grande 2
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 2)){
        xTriGrande2 += mouseX-pmouseX;
        yTriGrande2 += mouseY-pmouseY;
      }
      
    // Triángulo Mediano
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 3)){
        xTriMediano += mouseX-pmouseX;
        yTriMediano += mouseY-pmouseY;
      }
      
    // Triángulo Pequeño 1
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 4)){
        xTriPequeno1 += mouseX-pmouseX;
        yTriPequeno1 += mouseY-pmouseY;
      }
      
    // Triángulo Pequeño 2
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 5)){
        xTriPequeno2 += mouseX-pmouseX;
        yTriPequeno2 += mouseY-pmouseY;
      }
      
    // Cuadrado
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 6)){
        xCuadrado += mouseX-pmouseX;
        yCuadrado += mouseY-pmouseY;
      }
      
    // Trapezoide
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 7)){
        xTrapezoide += mouseX-pmouseX;
        yTrapezoide += mouseY-pmouseY;
      }
};
        
void mousePressed(){
  int colorMouse = get(mouseX, mouseY);
  if (mouseButton == LEFT && colorMouse == fondo){
    ctrlMov = 0;
  }
  if (mouseButton == LEFT && colorMouse == amarillo){
    ctrlMov = 1;
  }
  if (mouseButton == LEFT && colorMouse == aguamarina){
    ctrlMov = 2;
  }
  if (mouseButton == LEFT && colorMouse == naranja){
    ctrlMov = 3;
  }
  if (mouseButton == LEFT && colorMouse == azul){
    ctrlMov = 4;
  }
  if (mouseButton == LEFT && colorMouse == verde){
    ctrlMov = 5;
  }
  if (mouseButton == LEFT && colorMouse == rojo){
    ctrlMov = 6;
  }
  if (mouseButton == LEFT && colorMouse == morado){
    ctrlMov = 7;
  }
}