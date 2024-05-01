class Strings{
  concantunation(String str1, String str2){
    String result = str1+str2;
    print(result);
  }

  replace(String str){
    String result = str.replaceAll("hai", "hello");
    print(result);
  }

  trim(String str){
    String result = str.trim();
    print(result);
  }
  
  uppercaseAndLowercase(String str1,String str2){
    String upper = str1.toUpperCase();
    
    String lower = str2.toLowerCase();
    print(upper);
    print(lower);
  
  }

  containCheck(String str){
    bool result = str.contains("ha");
    print(result);
  }
}
void main(){
  Strings value = Strings();
  value.concantunation("hello", "fouzan") ;
  value.replace("hai");
  value.trim(" hello ");
  value.uppercaseAndLowercase("hello", "HAI");
  value.containCheck("ha");
}