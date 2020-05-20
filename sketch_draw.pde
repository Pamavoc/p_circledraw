int diam = 1;
//déclaration de la variable diam pour les dimensions de l'éllipse


void setup() {
  size(1000,1000);
  background(1);
  frameRate(60);
}

// setup de base avec un fond noir, une taille de fenetre et une fréquence d'image


void draw() {
   //remplissage d'un cercle avec 3 bleus différents
   fill(random(44,58),random(93,90),random(222,71));
   ellipse(mouseX,mouseY,diam,diam); 
   // création de ce cerle en fonction du déplacement de la souris sur l'axe X et Y
   stroke(255);
   // couleur du contour
   diam = diam + 1;
   // augmentation du diamètre pour que le cercle grossisse 

if (diam == 40) {
    diam = diam / 2;
}
 
// quand le diametre atteint une certaine taille; le cercle se divise en 2 pour créer un effet de perspective.
 
if (keyPressed) {
    if (key == 'b' || key == 'B') {
      saveFrame("sketch_draw-####.jpg");
    }
     
}
 }

 void mousePressed() {
  background(random(255),random(0));
  //changement de cercle lors d'un clique
}

 
