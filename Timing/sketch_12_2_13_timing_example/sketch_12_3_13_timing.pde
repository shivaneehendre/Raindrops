int currentTime = 0;
int timeChange = 0;
int oldTime = 0;
void setup(){
 size(300,300); 
}

void draw(){
 currentTime = millis();
 timeChange = currentTime - oldTime;
 if(timeChange >= 3000){
  fill(0,random(255),random(255));
  ellipse(random(width),random(height),20,20);
  oldTime = currentTime;
 } 
}
