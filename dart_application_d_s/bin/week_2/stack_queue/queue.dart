

class Queue{
  List value =[];

  bool isEmpty(){
    return value.isEmpty;
  }

  enqueue(dynamic item){
    value.add(item);
  }

  dequeue(){
   if(value.isNotEmpty){
     return value.removeAt(0);
   }else{
    return null;
   }
  }

  size(){
    return value.length;
  }

  peek(){
    if(value.isNotEmpty){
      return value[0];
    }else{
     return null;
    }
  }

  
}
void main(){
  Queue queue = Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.dequeue();
  print(queue.value);
 
  }