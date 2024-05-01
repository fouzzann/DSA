class Sample{
  void display(List<String> words , int left , int right ,String target){
    words.sort();
while(left <= right){
  var middle = (left+right)~/2;
  if(words[middle]== target){
    print(middle);
    break;
  }else if (words[middle] .compareTo(target)>0){
    left = middle --;

  }else{
    right = middle ++;
  }
  
}
  }
}void main(List<String> args) {
  Sample sample = Sample();
  List<String> words =['hai','hello'];
  String target = 'hello';
  int left = 0;
  int right = words.length -1;
  sample.display(words, left, right, target);
  
}