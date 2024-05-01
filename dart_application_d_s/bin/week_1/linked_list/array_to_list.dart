


class Node
{
  var data;
  Node? next;
  Node(this.data);
}
class linkedList{
Node? head;
Node? tail;
addNode(int data){
  // ignore: unused_local_variable
  Node? temp = head;
  Node? newNode = Node(data);
  if(head==null){
    head = newNode;
  }else{
    tail?.next = newNode;
  }
  tail = newNode;
}

display(){
  Node? temp = head;
  if(temp == null){
    print('no data');
  }
  while(temp !=null){
    print(temp.data);
    temp = temp.next;
  }

 
}



arr2Linked(List<int>store){
for(int i=0;i<store.length;i++){
  addNode(store[i]);
}
}
}

void main (){
  linkedList  list = linkedList();
  List<int> arr  =[1,2,3,4];
  list.arr2Linked(arr);
  list.display();
  
}