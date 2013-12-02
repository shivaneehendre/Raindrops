color c = color(0);
int oldTime = 2000;
void setup(){
 size(300,300);
 textSize(50);
 textAlign(CENTER);
}

void draw(){
  background(c);
   text(millis()/1000.0,width/2,height/2); 
   if(millis()/1000%waitTime == 0){
    c = color(0,random(255),random(255)); 
   }
}
