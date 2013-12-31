Raindrop [] raindrops = new Raindrop[500];
//gotta declare them all 
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
PImage heart; 
void setup() {
  //the array of raindrops
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop();
  } 
  //initialize all of the classes and pictures and booleans 
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
  //how the game starts - start screen 
  if (start == false) {
    background(80, 40, 113);
    textSize(40);
    textAlign(CENTER);
    //click anywhere and the game starts 
    text("Click to Play!", width/2, height/2);
    if(mousePressed== true && start == false){
      start = true; }
  }
  if(start == true){
    end = false;
    win = false;
    //background
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
    }
    //hearts that show you how many lives you have left
    //one disappears every time you lose a life
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
    //the person loses all of their lives and loses the game
    if (missed <= 0) {
    end = true;
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
    //just to see how many lives are there
    println(missed);
    //clouds so that the screen is pretty and decorated
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
  //if there are zero lives left the game ends
  //and this is a game over screen
  if (end == true) {
    start = false;
    background(10);
    text("GAME OVER", width/2, height/2);
    //rectangle that is a pretty pink in case they feel bad about losing
    fill(235,100,175);
    rect(width/2-75, height/2+25, 150, 50);
    fill(0);
    textSize(25);
    textAlign(CENTER);
    text("TRY AGAIN", width/2, height/2 + 58); }
  //this is the reset button if they want to play again
    if(end == true && mousePressed == true && mouseX>width/2 -75 && mouseX<width/2 +75 && mouseY>height/2 + 25 && mouseY < height/2 + 75){
       end = false;
       start = true;
       missed = 3;
       index = 1;
       score = 0;
     }
  //yay! the person won and gets to see the win game over screen
 //if they score high enough the boolean becomes true 
  if(score >= 30){
    win = true; 
 if(win = true){ 
   background(105,45,102);
   textAlign(CENTER);
   textSize(40);
   fill(255);
   text("YOU WIN!", width/2, height/2); 
   //the raindrops stop moving when you win
   for (int i = 0; i < index; i++) {
         raindrops[i].noMore();}
//the reset button if they want to prove their superiority and win again
    fill(25,150,175);
    rect(width/2-75, height/2+25, 150, 50);
    fill(0);
    textSize(25);
    textAlign(CENTER);
    text("PLAY AGAIN", width/2, height/2 + 60);  
     }
  }
  //this is the actual button that resets the game
  if(win == true && mousePressed == true && mouseX>width/2 -50 && mouseX<width/2 +50 && mouseY>height/2 + 25 && mouseY < height/2 + 75){
       win = false;
       start = true;
       missed = 3;
       index = 1;
       score = 0;
     }
}

