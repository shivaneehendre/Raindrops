class Catcher {
  PVector loc;
  int d;

  //constructor
  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 30;
  }  

  //display catcher
  void display() {
    fill(255);
    ellipse(loc.x, loc.y, d, d);
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

