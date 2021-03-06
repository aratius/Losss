void mouseClicked() {
  println("mouse clicked");
   numA = int(random(1, 20));
   numB = int(random(1, 20));
   
   while(numA == numB) {
  numB = int(random(1, 20)); 
   }
   
   ratio = (float) numA / numB;
   background(0, 0, 1);
   divSquare(0, 0, width);
}

void draw(){}
