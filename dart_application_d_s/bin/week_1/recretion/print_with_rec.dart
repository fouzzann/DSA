
class Node{
  var data;
  Node? next;
  Node(this.data);
  
}

class Slinkedlist{
  Node? head;
  Node? tail;

  addNode(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
    }
    tail = newNode;
  }


  
display(){
  Node? temp = head;
  if(head == null){
    print('no data');
  }
  while(temp !=null){
    print(temp.data);
    temp = temp.next;
  }
}




}

  
  
void main(){

  Slinkedlist list = Slinkedlist();

  list.addNode(1);
  list.addNode(2);
  list.addNode(2);
  list.addNode(3);
  list.addNode(4);

  


rec(node){
if(node == null){
  return;
}
print(node.data);
rec(node.next);
}
rec(list.head);
 
  
}