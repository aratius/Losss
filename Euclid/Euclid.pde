int numA = 10;
int numB = 6;
float ratio = (float) numB / numA;
float thr = 100;

void setup () {
  
  size(500, 500); 
  noStroke();
  colorMode(HSB, 1);
  
  float wd = width * ratio;
  float xPos = 0;
  float yPos = 0;
  int itr = 0;
    
  String namePNG = str(numA) + "_" + str(numB) + ".png";
  
   
  while(wd > 0.1) {
  itr++;
  
    if(itr % 2 == 1) {
      while(xPos + wd <= width + 0.1) {
        divSquare(xPos, yPos, wd);
        //rect(xPos, yPos, wd, wd);
        xPos += wd;
      }
      wd = width - xPos;  //amari
    }else {
      while(yPos + wd <= width * ratio + 0.1) {
        //rect(xPos, yPos, wd, wd);
        divSquare(xPos, yPos, wd);
        yPos += wd;
      }
      wd = width * ratio - yPos;
    }
  
 }
  
  save(namePNG);
}
