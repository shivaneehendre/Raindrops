Raindrop [] raindrops = new Raindrop[500];
int score = 0;
int missed;
int oldTime = 0;
int index = 1;
int threshold = 3000;
Catcher catcher;
PVector loc;
PImage cloud;
void setup() {
  size(300, 300);
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop(); }
  catcher = new Catcher();
   cloud = loadImage("gray cloud1.png");
}

void draw() {
  background(120);
  for (int i = 0; i < index; i++) {
//this calls the display and move functions for raindrops
    raindrops[i].display();
    raindrops[i].move();
//the catcher makes the raindrops go away
//the next one falls sooner and score goes up                                           
   if(catcher.catchRain(raindrops[i]) == true){
    raindrops[i].noMore();
    score++;
    threshold -= 50; }
//number of raindrops that are not caught
    if(raindrops[i].loc.y > height && raindrops[i].loc.y < height + 15){
     missed+=1;  
         }
    }
  
//timer and index so that raindrops fall at interval  
  if(millis()-oldTime > threshold){
    if(index<raindrops.length){
    index++;
    oldTime = millis();
   }
  }
  //display and move catcher
    catcher.display();
    catcher.update();
  //display score in corner
    textSize(30);
    text(score,10,30);
    fill(255,0,0);
  println(missed);
    imageMode(CENTER);
    image(cloud,75,30,cloud.width,cloud.height);
    image(cloud,220,30,cloud.width,cloud.height);
    image(cloud,125,30,cloud.width,cloud.height);
    image(cloud,160,30,cloud.width,cloud.height);
    image(cloud,250,30,cloud.width,cloud.height);
    image(cloud,275,30,cloud.width,cloud.height);
  }
  
