Raindrop [] raindrops = new Raindrop[20];
Catcher catcher;
int score = 0;
void setup() {
  size(300, 300);
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop(); }
  catcher = new Catcher();
}

void draw() {
  background(120);
  for (int i = 0; i<raindrops.length; i++) {
    raindrops[i].display();
    raindrops[i].move();
    if(raindrops[i].loc.y > height){
    raindrops[i].reset();
     }
   if(catcher.catchDrop(raindrops[i]) == true){
    raindrops[i].reset();
    raindrops[i].loc.x = random(width);
    score++;
    }
  }
    catcher.display();
    catcher.update();
    textSize(30);
    text(score,10,30);
  }
