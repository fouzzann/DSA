import 'dart:html';

class Minheap{
  late List<int> heap = [];
  swap(int i, int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp ;
  }

heapyfyup(int index){
  int parant =(index-1)~/2;
  while(index>0&& heap[index]< heap[parant]){
    swap(index, parant);
    index = parant;
    parant = (index-1)~/2;
  }
}

insert(int value){
  heap.add(value);
  heapyfyup(heap.length -1);
}

heapyfydown( int index){
  int smallest = index;
  int leftchild = 2* index +1;
  int rightchild = 2* index +2;
  if(leftchild<heap.length&&heap[leftchild]< heap[smallest]){
    smallest = leftchild ;
  }
  if(rightchild< heap.length&& heap[rightchild]< heap[smallest]){
    smallest = rightchild;
  }
  if(smallest!= index){
    swap(index, smallest);
    heapyfydown(smallest);
  }
}
delete(int value){
  int index  = heap.indexOf(value);
  if(index!=-1){
    heap[index] = heap.last;
    heap.removeLast();
    heapyfydown(index);
  }
}
    
  }


