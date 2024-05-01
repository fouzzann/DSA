class Stack{
  List<int> nums =[];
  bool isEmpty(){
    return nums.isEmpty;
  }

  push(int value){
    nums.add(value);
  }

  pop(){
    if(isEmpty()){
      throw Exception("stack is empty");
    }
    return nums.removeLast();
  }

  peak(){
    if(isEmpty()){
      throw Exception("stack is empty");
    }
    return nums.last;
  }
  
   reverse() {
    List<int> reverse = [];
    while (!isEmpty()) {
      reverse.add(pop());
    }
    nums = reverse;
  }

  sum(){
    int sum =0;
    for(int element in nums){
      sum + element;
    }
    return sum;
  }
}

main(){
Stack stack = Stack();
stack.push(1);
stack.push(2);
stack.push(3);
stack.push(4);
stack.push(5);
print("top element ${stack.peak()}");
print(stack.nums);

}