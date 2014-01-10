class Raindrop {
  //declaring everything 
  PVector loc, vel, acc;
  float d;
  PImage raindrop;

  //constructor
  Raindrop() {
    d = 10;
    raindrop = loadImage("raindrops1.jpg.png");
    loc = new PVector(random(10,285), 0);
    vel = new PVector(0, random(.5, 1.25));
    acc = new PVector(0, random(.001, .019));
  }

  //raindrops are raindrop pictures that fall 
  void display() {
    fill(30, 160, 200);
    image(raindrop, loc.x, loc.y, d+5, d+5);
  }

  //raindrops move in a downward fashion
  void move() {
    loc.add(vel);
    vel.add(acc);
  }

  //raindrops wrap around
  //this function is currently not being used in code
  void reset() {
    loc.x = random(width);
    loc.y = random(-height/2, 0); 
    vel = new PVector(0, random(.5, 1.5));
  }
  
//if they go past the bottom of the screen
//the number of lives goes down and they go to the side
//and if a lot of them fall then the person loses
  void missed() {
    if (loc.y >= height) {
      missed--;
      noMore();
    }
  }

  //raindrops go off to side
  //this is called both when they are caught and when they are not
  void noMore() {
    loc.set(width*2, 0);
    vel.set(0, 0);
    acc.set(0, 0);
  }
}

