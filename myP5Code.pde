//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var x = -130;
var y = 190;
var w = 150;
var h = 30;
var cloud1x = 85;
var cloud1y = 58;
var cloud2x = 305;
var cloud2y = 95;
var cloud3x = -50;
var cloud3y = 400;
var cloud4x = -250;
var cloud4y = 460;
var skyw = 20;
var skyh = 10;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
  }
  
  
  
  //🎯Animation Code Goes Here
  
  //sky
  noStroke();
  fill(214, 247, 255);
  ellipse(200, 400, skyw, skyh);
  
  //clouds
  noStroke();
  fill(255, 255, 255);
  //cloud 1
  ellipse(cloud1x, cloud1y, 60, 45);
  ellipse(cloud1x - 25, cloud1y, 40, 30);
  ellipse(cloud1x + 25, cloud1y, 40, 30);
  //cloud 2
  ellipse(cloud2x, cloud2y, 60, 45);
  ellipse(cloud2x - 25, cloud2y, 40, 30);
  ellipse(cloud2x + 25, cloud2y, 40, 30);
  //cloud 3
  ellipse(cloud3x, cloud3y, 60, 45);
  ellipse(cloud3x - 25, cloud3y, 40, 30);
  ellipse(cloud3x + 25, cloud3y, 40, 30);
  //cloud 4
  ellipse(cloud4x, cloud4y, 60, 45);
  ellipse(cloud4x - 25, cloud4y, 40, 30);
  ellipse(cloud4x + 25, cloud4y, 40, 30);
  
  //plane
  noStroke();
  fill(225, 225, 225);
  rect(x, y, w, h);
  triangle(x + 2, y + 30, x + 2, y, x - 35, y + 1);
  ellipse (x + 120, y + 15, w - 30, h + 1);
  quad(x - 10, y + 3, x - 27, y - 32, x - 18, y - 32, x + 24, y + 3);
  
  fill(0, 0, 0);
  quad(x + 152, y + 13, x + 158, y + 8, x + 176, y + 10, x + 183, y + 13);
  stroke(0, 0, 0); 
  strokeWeight(12);
  point(x + 66, y + 35);
  point(x + 80, y + 35);
  point(x + 150, y + 31);
  
  //windows
  strokeWeight(3); 
  point(x + 23, y + 13);
  point(x + 30, y + 13);
  point(x + 37, y + 13);
  point(x + 44, y + 13);
  point(x + 51, y + 13);
  point(x + 58, y + 13);
  point(x + 65, y + 13);
  point(x + 72, y + 13);
  point(x + 79, y + 13);
  point(x + 86, y + 13);
  point(x + 93, y + 13);
  point(x + 100, y + 13);
  point(x + 107, y + 13);
  point(x + 114, y + 13);
  point(x + 121, y + 13);
  point(x + 128, y + 13);
  point(x + 135, y + 13);
  point(x + 142, y + 13);
  
  //inside wheel
  stroke(189, 189, 189);
  strokeWeight(5);
  point(x + 66, y + 35);
  point(x + 80, y + 35);
  point(x + 150, y + 31);
  
  x += 2
  y -= 1
  
  cloud1x += 1/4
  cloud1y -= 1/12
  
  cloud2x += 1/4
  cloud2y -= 1/12
  
  cloud3x += 1/4
  cloud3y -= 1/12
  
  cloud4x += 1/4
  cloud4y -= 1/12
  
  skyw += 10
  skyh += 1
  
  if(x > 400){
  x = -130;
  }
  
  if(y < -80){
  y = 190
  }
  
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
