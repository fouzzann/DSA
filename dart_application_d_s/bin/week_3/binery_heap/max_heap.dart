class Maxheap{
  List<int> heap = [];
  swap(int i, int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  } 
  
 heapyfyup(int index){
  int parant = (index - 1)~/2;
  while(index>0&& heap[index]>heap[parant]){
    swap(index, parant);
    index = parant;
    parant =(index-1)~/2;
  }
 }

 heapyfydown(int index){
    int smallest = index;
    int leftchild = 2* index +1;
    int rightchild = 2* index +2;
    if(leftchild<heap.length&& heap[leftchild]>heap[rightchild]){
      smallest = leftchild;
    }

    if(rightchild<heap.length&&heap[rightchild]>heap[leftchild]){
      smallest = rightchild;
    }

    if(smallest!=index){
      swap(index, smallest);
      heapyfydown(smallest);
    }
  }
  
  insert(int value){
    heap.add(value);
    heapyfyup(heap.length -1);
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
    Maxheap value= Maxheap();
    value.insert(1);
    value.insert(2);
    value.insert(3);
    value.insert(4);
    value.insert(5);
    value.dispay();
  }