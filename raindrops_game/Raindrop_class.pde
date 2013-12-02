class Raindrop {
  PVector loc, vel, acc;
  float d;

  Raindrop() {
    d = 10;
    loc = new PVector(random(width), random(-height/2,0));
    vel = new PVector(0, random(.5, 1.25));
    acc = new PVector(0, random(.001, .019));
  }

  void display() {
    fill(30, 160, 200);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }

void reset(){
  loc.x = random(width);
 loc.y = random(-height/2,0); 
 vel = new PVector(0, random(.5, 1.5));
  }
}

