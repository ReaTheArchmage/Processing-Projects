final int AMT=7;
final float SIZE=700;
final float OR=SIZE/2;
float rad=TAU/AMT;
float t=0;
float freq=1;
float thresh=4;

void setup(){
  size(700,700); strokeWeight(2);
  point(OR,OR);  frameRate(10);
}

void draw(){
  t=(t<=freq)?t+0.1:0;
  if(t>=freq){
    t=0; freq++;
    if(freq>thresh)freq=1;
  }
  for(int x=0;x<AMT;x++){
    float w=-500; 
    float h=20;
    float mod=2%255*t;
    stroke(mod*(t*20),mod*(t*10),mod*(t*5));
    pushMatrix();
    translate(width/2, height/2);
    rotate(rad*x);
    point(w,h);
    line(w/5*t,h/5*t,OR,OR);
    popMatrix();
    fill(0,0,0,2);
    rect(0,0,height,width);
}}
