final int O=2;
int size = 500;
int org=size/O;
int amt=5;
int c=25;
float t=0.0;
float at;
boolean ell_on=true; // if false, will display arc mode, else ellipse mode.
boolean mod_rot=false; //  if true will rotate each ellipse.
boolean squared=false; // if true will calculate emission rythm with squared numbers.

void setup() {
  strokeWeight(1);
  size(500,500);
  frameRate(50);
  noFill();
}
void draw() {
  background(140);
  t +=0.1;
  for(int x=amt;x!=0;x--){
    for(int y=amt;y!=0;y--){
      if(ell_on&&squared){
        ell(x*x,y*y);
     }else if(ell_on){
        ell(x,y);
     }else{
        ar(y, y);
}}}}

void ell(int x,int y) {
  at=(amt*t);
  float w=(at*x)%size;
  float h=(at*y)%size;
  pushMatrix();
  translate(org,org);
  if(mod_rot){rotate(x%y);}
  ellipse(0, 0, w, h);
  popMatrix();
}
void ar(int x,int y) {
  at=(amt*t);
  arc(org,org,
   (at*x)%size,(at*y)%size,
   amt+x,amt+x+y);
  fill(c*x%O,c,c*y%4,10);
}
