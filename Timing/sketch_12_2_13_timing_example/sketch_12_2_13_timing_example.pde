//color c = color(128);
int currentTime = 0;
int oldTime = 0;
int timeChange = 0;
void setup(){
 size(300,300);
 textSize(50);
 textAlign(CENTER);
}

void draw(){
//  background(c);
  currentTime = millis();
  timeChange = currentTime - oldTime;
  if(timeChange >= 2000){
    background(0,random(255),random(255));
//   fill(0,random(255),random(255));
//   ellipse(random(width),random(height),10,10);
   oldTime = currentTime;
  }   
}
