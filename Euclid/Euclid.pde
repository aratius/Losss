
int numA = 520;
int numB = 100;
float ratio = (float) numB / numA;

size(500, 500); 
float wd = width;
float xPos = 0;
float yPos = 0;
int itr = 0;
  
String namePNG = str(numA) + "_" + str(numB) + ".png";

 
 while(wd > 0.1) {
itr++;

if(itr % 2 == 1) {
  while(xPos + wd * ratio <= width + 0.1) {
    rect(xPos, yPos, wd * ratio, wd);
    xPos += wd * ratio;
  }
  wd = width - xPos;  //amari
}else {
  while(yPos + wd / ratio <= width + 0.1) {
    rect(xPos, yPos, wd, wd / ratio);
    yPos += wd / ratio;
  }
  wd = width - yPos;
}

 }

save(namePNG);
