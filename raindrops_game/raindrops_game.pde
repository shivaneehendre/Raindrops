Raindrop [] raindrops = new Raindrop[5000];
int score = 0;
int oldTime = 0;
int index = 1;
int threshold = 3000;
Catcher catcher;
void setup() {
  size(300, 300);
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop(); }
  catcher = new Catcher();
}

void draw() {
  background(120);
  for (int i = 0; i < index; i++) {
    raindrops[i].display();
    raindrops[i].move();
//    if(raindrops[i].loc.y > height){
//    raindrops[i].reset();
//     }
   if(catcher.catchRain(raindrops[i]) == true){
    raindrops[i].noMore();
    score++;
    threshold -= 50;
    }
  }
  if(millis()-oldTime > threshold){
    if(index<raindrops.length){
    index++;
    oldTime = millis();
   }
  }
  
    catcher.display();
    catcher.update();
    textSize(30);
    text(score,10,30);
  }
