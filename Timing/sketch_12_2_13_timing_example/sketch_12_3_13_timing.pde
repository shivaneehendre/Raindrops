int currentTime = 0;
int timeChange = 0;
int oldTime = 0;
void setup(){
 size(300,300);
 background(0);
}

void draw(){
 currentTime = millis();
 timeChange = currentTime - oldTime;
 if(timeChange >= 30){
  fill(random(0,15),random(255),random(255));
  ellipse(random(width),random(height),20,20);
  oldTime = currentTime;
 } 
}
