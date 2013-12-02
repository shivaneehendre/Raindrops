class Catcher{
  PVector loc;
  int d;

Catcher(){
  loc = new PVector(mouseX, height-d);
  d = 30;
}  

void display(){
 fill(0);
 ellipse(loc.x,loc.y,d,d);  
 }

void update(){
loc.set(mouseX,height-d); 
 }
 
boolean catchRain(Raindrop raindrop){
 if(dist(loc.x, loc.y, raindrop.loc.x, raindrop.loc.y) < d/2 + raindrop.d/2){
  return true;
 } 
  else {
    return false;
  }
 }
}
