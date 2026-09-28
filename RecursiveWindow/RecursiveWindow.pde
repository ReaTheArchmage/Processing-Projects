final int amt=20;
int s=1000;
int dv=2;
int hs=s/dv;

void setup() {
  background(0);
  size(1000,1000);
  strokeWeight(2);
  stroke(255);
  int c=25;
  for(int x=0;x<amt;x++){
    line(0,hs,s,hs);
    line(hs,hs,hs,0);
    if (x>0){
      clrz(c,x);
    }
    hs/=dv;
    s/=dv;
    c*=dv;
}}


void clrz(int c,int x){
  int cl=255;
  stroke(c,cl-(c/x),cl-(c/x));
}
