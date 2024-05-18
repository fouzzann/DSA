class Minheap{
  late List<int> heap = [];
  swap(int i, int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

 heapyfyup(int index){
  int parant = (index - 1)~/2;
  while(index>0&& heap[index]<heap[parant]){
    swap(index, parant);
    index = parant;
    parant =(index-1)~/2;
  }
 }

 inst(int value){
    heap.add(value);
    heapyfyup(heap.length -1);
  }

 heapyfydown(int index){
    int smallest = index;
    int leftchild = 2* index +1;
    int rightchild = 2* index +2;
    if(leftchild<heap.length&& heap[leftchild]<heap[rightchild]){
      smallest = leftchild;
    }
    if(rightchild<heap.length&&heap[rightchild]<heap[leftchild]){
      smallest = rightchild;
    }
    if(smallest!=index){
      swap(index, smallest);
      heapyfydown(smallest);
    } 
     
  }
  delete( int value){
    int index = heap.indexOf(value);
    heap[index] = heap.last;
    heap.removeLast();
    heapyfydown(index);
  }
  dispay(){
    for( int i=0;i<heap.length;i++){
      print(heap[i]);
    }
    
  }

}


  main(){
    Minheap value= Minheap();
    value.inst(1);
    value.inst(2); 
    value.inst(3);
    value.inst(4);
    value.dispay();
  }     