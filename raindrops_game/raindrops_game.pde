Raindrop [] raindrops = new Raindrop[500];
int score = 0;
int missed;
int oldTime = 0;
int index = 0;
int threshold = 3000;
Catcher catcher;
PImage cloud;
boolean start;  
boolean end;
PImage rain;
boolean win;
<<<<<<< HEAD
PImage heart; 
=======
PImage heart;
>>>>>>> origin/Game-Over-Screen
void setup() {
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop();
  }
  rain = loadImage("rainy background.jpg");
  size(rain.width,rain.height);
  catcher = new Catcher();
  cloud = loadImage("gray cloud1.png");
  heart = loadImage("heart1.png");
  start = false;
  end = false;
  win = false;
  missed = 3;
}

void draw() {
  if (start == false) {
    background(60, 100, 200);
    textSize(40);
    textAlign(CENTER);
    text("Click to Play!", width/2, height/2);
    if(mousePressed== true){
      start = true; }
  }
  if(start == true){
    end = false;
    background(rain);
    for (int i = 0; i < index; i++) {
      //this calls the display and move functions for raindrops
      raindrops[i].display();
      raindrops[i].move();
      raindrops[i].missed();
      //the catcher makes the raindrops go away
      //the next one falls sooner and score goes up                                           
      if (catcher.catchRain(raindrops[i]) == true) {
        raindrops[i].noMore();
        score++;
        threshold -= 75;
      }
      if (missed <= 0) {
      end = true;
     }
    }
    if(missed == 3){
    image(heart, width-85, height-30, 35, 35);
    image(heart, width-50, height-30, 35, 35);
    image(heart, width-15, height-30, 35, 35);
    }
    if (missed == 2){
    image(heart, width-50, height-30, 35, 35);
    image(heart, width-15, height-30, 35, 35);
    }
    if(missed==1){
    image(heart, width-15, height-30, 35, 35);
    }
   
    //timer and index so that raindrops fall at interval  
    if (millis()-oldTime > threshold) {
      if (index<raindrops.length) {
        index++;
        oldTime = millis();
      }
    }
    //display and move catcher
    catcher.display();
    catcher.update();
    //display score in corner
    textSize(40);
    fill(25,200,150);
    text(score, 20, 40);
    println(missed);
    imageMode(CENTER);
    image(cloud,  95, 25, cloud.width, cloud.height);
    image(cloud, 220, 25, cloud.width, cloud.height);
    image(cloud, 125, 25, cloud.width, cloud.height);
    image(cloud, 360, 25, cloud.width, cloud.height);
    image(cloud, 250, 25, cloud.width, cloud.height);
    image(cloud, 275, 25, cloud.width, cloud.height);
    image(cloud, 295, 25, cloud.width, cloud.height);
    image(cloud, 345, 25, cloud.width, cloud.height);
    image(cloud, 310, 25, cloud.width, cloud.height);
    image(cloud, 190, 25, cloud.width, cloud.height);
    image(cloud, 390, 25, cloud.width, cloud.height);
  }
  if (end == true) {
<<<<<<< HEAD
=======
    start = false;
>>>>>>> origin/Game-Over-Screen
    background(0);
    text("GAME OVER", width/2, height/2);
    fill(25,100,175);
    rect(width/2-75, height/2+25, 150, 50);
    fill(255);
    textSize(25);
    textAlign(CENTER);
    text("TRY AGAIN", width/2, height/2 + 60); }
    
<<<<<<< HEAD
    if(end == true && mousePressed == true && mouseX>width/2 -70 && mouseX<width/2 +70 && mouseY>height/2 + 25 && mouseY < height/2 + 75){
=======
    if(end == true && mousePressed == true && mouseX>width/2 -75 && mouseX<width/2 +75 && mouseY>height/2 + 25 && mouseY < height/2 + 75){
>>>>>>> origin/Game-Over-Screen
       end = false;
       start = true;
       missed = 3;
       index = 1;
       score = 0;
     }
<<<<<<< HEAD
  if(score >= 5){
    win = true;  
 if(win = true){ 
=======
  if(score >= 30){
    win = true;  
 if(win = true){  
>>>>>>> origin/Game-Over-Screen
   background(25,100,125);
   textAlign(CENTER);
   textSize(40);
   fill(0);
   text("YOU WIN!", width/2, height/2); 
//   for (int i = 0; i < index; i++) {
//         raindrops[i].noMore();}
    fill(25,150,175);
    rect(width/2-75, height/2+25, 150, 50);
    fill(255);
    textSize(25);
    textAlign(CENTER);
    text("PLAY AGAIN", width/2, height/2 + 60);
<<<<<<< HEAD
 }
  }
    if(win == true && mousePressed == true && mouseX>width/2 -50 && mouseX<width/2 +50 && mouseY>height/2 + 25 && mouseY < height/2 + 75){
    win = false;
    start = true;
    missed = 3;
    index = 1;
    score = 0;
    threshold = 3000;
=======
  }
  }
  if(win == true && mousePressed == true && mouseX>width/2 -50 && mouseX<width/2 +50 && mouseY>height/2 + 25 && mouseY < height/2 + 75){
       win = false;
       start = true;
       missed = 3;
       index = 1;
       score = 0;
>>>>>>> origin/Game-Over-Screen
     }
}

