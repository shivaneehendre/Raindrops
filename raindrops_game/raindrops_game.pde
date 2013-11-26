Raindrop [] raindrops = new Raindrop[20];
void setup() {
  size(300, 300);
  for (int i = 0; i < raindrops.length; i++) {
    raindrops[i] = new Raindrop();
  }
}

void draw() {
  background(0);
  for (int i = 0; i<raindrops.length; i++) {
    raindrops[i].display();
    raindrops[i].move();
  }
}

