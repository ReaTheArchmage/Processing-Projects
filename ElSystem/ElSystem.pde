public class Rule {
  public String Key, Value;
  void setRule(String k, String v){
    this.Key = k; this.Value = v;
  }
  public String getKey(){
  return this.Key;
  }
  public String getValue(){
  return this.Value;
  }
  public void printRule(){
    print(this.Key," : ");
    print(this.Value);
  }
}

final int LOOPS=6;
final float OR = height/4;
final int scale = 2;
final int POINT_SIZE = 4;
String paragraph = "A";

Rule rule_1 = new Rule();
Rule rule_2 = new Rule();
Rule rule_3 = new Rule();

void setup(){
  background(0);
  frameRate(100);

  size(1500,900);
  rule_1.setRule("A","AB");
  rule_2.setRule("B","CCABB");
  rule_3.setRule("C","CA");
  
  for (int x = 0; x < LOOPS; x++){
    paragraph = update_paragraph();
  }
}

  String update_paragraph(){
  String new_paragraph = "";
  
  for (int i = 0; i < paragraph.length(); i++){
    String current = str(paragraph.charAt(i));
    
    if(current.equals(rule_1.Key)){
      new_paragraph += rule_1.Value;
  
    }else if(current.equals(rule_2.Key)){
      new_paragraph += rule_2.Value;
      
    }else if(current.equals(rule_3.Key)){
      
    }    
  }
  return new_paragraph;
}
float t = 0;
void draw(){
  
  t += 0.01;
  drawParagraph(t);
}

void drawParagraph(float t){
  
  pushMatrix();
  translate(width/2,height/2);
  for (int x = 0; x < paragraph.length(); x++){
    String current = str(paragraph.charAt(x));
    float coordinate;

    if (current.equals("A")) {
       coordinate = (OR+x-t)%0.5;
       translate(OR+x/10,OR+x/10);
       rotate(coordinate);
       fill(120, 120, 255,100);
       circle(coordinate,coordinate,POINT_SIZE);
    }
    if (current.equals("B")){
       coordinate = (OR+x-t)%0.5;
       translate(OR+x*10,OR+x*10);
       rotate(coordinate);
       fill(200, 30, 255,255);
       circle(coordinate,coordinate,POINT_SIZE);
  }
    if (current.equals("C")){
       coordinate = (OR+x-t)%0.5;
       translate(OR+x*10,OR+x*10);
       rotate(coordinate);
       fill(20, 90, 255,200);
       circle(coordinate,coordinate,POINT_SIZE);
    }
  }
  popMatrix();
}
