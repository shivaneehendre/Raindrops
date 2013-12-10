class Raindrop {
  PVector loc, vel, acc;
  float d;

//constructor
  Raindrop() {
    d = 10;
    loc = new PVector(random(width), -d);
    vel = new PVector(0, random(.5, 1.25));
    acc = new PVector(0, random(.001, .019));
  }

//raindrops are blue circles 
  void display() {
    fill(30, 160, 200);
    ellipse(loc.x, loc.y, d, d);
  }

//raindrops move
  void move() {
    loc.add(vel);
    vel.add(acc);
  }

//raindrops wrap around
//this function is currently not being used in code
void reset(){
 loc.x = random(width);
 loc.y = random(-height/2,0); 
 vel = new PVector(0, random(.5, 1.5));
  }
 
//raindrops go off screen
void noMore(){
 loc.set(height-60,0);
 vel.set(0,0);
 acc.set(0,0);
 } 
}

