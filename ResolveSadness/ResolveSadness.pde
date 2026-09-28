/* I'm a sad little visual algorithm, I can sing and dance, but 
who really cares about me? */

float d=1f;
final int AMT=5;
float t=0f;
float delta=0.4f; 

void setup(){
  size(800,800);
}

void draw(){
  background(200);
  t+=delta;
  line(0-(t*d),0,width+(t*d),height);
  line(0-(t*d*2),0,width+(t*d*2),height);
  line(0-(t*d*3),0,width+(t*d*3),height);
  line(0-(t*d*4),0,width+(t*d*4),height);
  line(0-(t*d*5),0,width+(t*d*5),height);
  line(0-(t*d*6),0,width+(t*d*6),height);
  line(0-(t*d*7),0,width+(t*d*7),height);
  line(0-(t*d*8),0,width+(t*d*8),height);
  line(0-(t*d*9),0,width+(t*d*9),height);
  line(0-(t*d*10),0,width+(t*d*10),height);
  line(0-(t*d*11),0,width+(t*d*11),height);
  line(0-(t*d*12),0,width+(t*d*12),height);
}
