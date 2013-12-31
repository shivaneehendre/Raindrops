class Catcher {
  PVector loc;
  PImage bucket;
  int d;

  //constructor
  Catcher() {
    bucket = loadImage("bucket.png");
    loc = new PVector(mouseX, height-d);
    d = 30;
  }  

  //display catcher
  void display() {
    fill(255);
    image(bucket, loc.x, loc.y, d+10, d+10);
  }

  //so that the catcher moves
  void update() {
    loc.set(mouseX, height-d);
  }

  //make the catcher recognize raindrops
  boolean catchRain(Raindrop raindrop) {
    if (dist(loc.x, loc.y, raindrop.loc.x, raindrop.loc.y) < d/2 + raindrop.d/2) {
      return true;
    } 
    else {
      return false;
    }
  }
}

