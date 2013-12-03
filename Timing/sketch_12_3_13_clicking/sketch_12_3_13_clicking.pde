Raindrop [] raindrops = new Raindrop [50];
int index = 0;
int oldTime = 0;
int currentTime = millis();
void setup(){
 size(300,300);
for(int i = 0; i < raindrops.length; i++){
    raindrops[i] = new Raindrop(); }
}

void draw(){
  background(50);
    for(int i = 0; i < index; i++){
  raindrops[i].display();
  raindrops[i].move(); }
  
  currentTime = millis();
  if(currentTime-oldTime >= 500){
  index++;
  oldTime = currentTime;
 }
 
//if(raindrops[i].loc.y>height){
// raindrops[i].reset();
//}

}

