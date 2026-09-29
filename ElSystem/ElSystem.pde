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
String paragraph = "A";

Rule rule_1 = new Rule();
Rule rule_2 = new Rule();
Rule rule_3 = new Rule();

void setup(){
  size(600,600);
  rule_1.setRule("A","AB");
  rule_2.setRule("B","AC");
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
  print(new_paragraph,"\n");
  return new_paragraph;
}
