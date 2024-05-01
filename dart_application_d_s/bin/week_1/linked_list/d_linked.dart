

class Node {
 var data;
 Node? next;
 Node? prev;
 Node( this.data);
}
class Dlinkedlist{
  Node? head;
  Node? tail;
  

addNode(int data){
  Node? newNode = Node(data);
  if(head == null) {
    head = newNode;
  } else {
    newNode.prev = tail;
    tail?.next = newNode;
  }
     tail = newNode;
}
display(){
  Node? temp = head;
  if(head == null ){
    print('No Data');

  }

  while(temp != null){
    print(temp.data);
    temp = temp.next;
  }
}
deleteAt(int data){
  Node? temp = head ;
  // ignore: unused_local_variable
  Node? prev;
  if( temp != null&& temp.data == data ){
    head = temp.next;
  }
  while(temp != null&& temp.data !=data){
    prev = temp;
    temp = temp.next;
  }
  if( temp ==tail){
    prev = tail;
    tail?.next = null;
  }
  print(temp?.prev?.data);
  temp?.prev?.next = temp.next;
  temp?.next?.prev = temp.prev;

  // temp?.next = temp.next?.next;
  // temp?.next?.prev = temp;

}

deleteAafter(int data){
  Node? temp = head ;
  if(temp!= null&& temp.next?.data == data){
    print(temp);
    head = temp.next;
    return;
  }
  while(temp!= null && temp.next?.next?.data != data){
    temp = temp.next;
  }
  if(temp == tail){
    tail?.next = null;
  }
  temp?.next = temp.next?.next;
  temp?.next?.prev = temp;
}




insertAfter(int nextTo, int data){
  Node? newNode = Node(data);
  Node? temp = head ;
  while(temp!= null&& temp.data != nextTo){
    temp = temp.next;
     
  }
  if(temp == null){
    print('value not found');
  }
  if( temp == tail ){
    tail = newNode;
    tail?.next = newNode;
  }
  newNode.next = temp?.next;
  newNode.prev= temp;
  temp?.next = newNode;
  
}

reverse(){
  Node? temp = head;
  Node? prev;
  while( temp != null){
    Node? nextNode = temp.next;
    temp.next = prev;
    temp.prev = nextNode;
    prev = temp;
    temp = nextNode;
  }
  head = prev;
}



middleValue(){
  Node? temp = head ;
  Node? fast = temp;
  Node? slow = temp;
  while(slow?.next != null&& fast?.next != null){
    slow = slow?.next;
    fast = fast?.next?.next;
  }
  return slow?.data;
}


}

void main(){
Dlinkedlist list = Dlinkedlist();



list.addNode(1);
list.addNode(2);
list.addNode(3);
list.addNode(4);
list.addNode(5);
// list.deleteAt(3);
// list.deleteAafter(2);
// print("middle value ${list.middleValue()}");
list.reverse();
list.display();

}
