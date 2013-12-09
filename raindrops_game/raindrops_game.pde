Raindrop [] raindrops = new Raindrop[500];
int score = 0;
int oldTime = 0;
int index = 1;
int threshold = 3000;
PVector cloudLoc;
PImage cloud;
Catcher catcher;
void setup() {
  size(300, 300);
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop(); }
  catcher = new Catcher();
  //images
  cloud = loadImage("gray cloud.png");
  cloudLoc = new PVector(random(width),50);
}

void draw() {
  background(120);
  //this calls the display and move functions for raindrops
  for (int i = 0; i < index; i++) {
    raindrops[i].display();
    raindrops[i].move();
//the catcher makes the raindrops go away
//the next one falls sooner and score goes up                                           
   if(catcher.catchRain(raindrops[i]) == true){
    raindrops[i].noMore();
    score++;
    threshold -= 50;
    }
  }
  
//timer and index so that raindrops fall at interval  
  if(millis()-oldTime > threshold){
    if(index<raindrops.length){
    index++;
    oldTime = millis();
   }
  }
    catcher.display();
    catcher.update();
  //display score in corner
    textSize(30);
    text(score,10,30);
    fill(255,0,0);
    //images
    image(cloud,100,50,cloud.width,cloud.height);
  }
