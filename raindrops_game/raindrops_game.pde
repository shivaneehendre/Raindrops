Raindrop [] raindrops = new Raindrop[500];
int score = 0;
int missed;
int oldTime = 0;
int index = 1;
int threshold = 3000;
Catcher catcher;
PVector loc;
PImage cloud;
boolean start;  
boolean end;
void setup() {
  size(300, 300);
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop();
  }
  catcher = new Catcher();
  cloud = loadImage("gray cloud1.png");
  start = false;
  end = false;
  missed = 3;
}

void draw() {
  if (start == false) {
    background(60, 100, 200);
    textSize(40);
    textAlign(CENTER);
    text("Click to Play!", width/2, height/2);
  }
  else {
    background(120);
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
        threshold -= 50;
      }
      //number of raindrops that are not caught
    }
    if (missed == 0) {
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
    textSize(30);
    text(score, 30, 30);
    fill(255, 0, 0);
    text(missed, width-35, height-30);
    println(missed);
    imageMode(CENTER);
    image(cloud, 95, 25, cloud.width, cloud.height);
    image(cloud, 220, 25, cloud.width, cloud.height);
    image(cloud, 125, 25, cloud.width, cloud.height);
    image(cloud, 160, 25, cloud.width, cloud.height);
    image(cloud, 250, 25, cloud.width, cloud.height);
    image(cloud, 275, 25, cloud.width, cloud.height);
  }
  if (end == true) {
    background(0);
    text("GAME OVER", width/2, height/2);
  }
}

void mousePressed() {
  start = true;
}

