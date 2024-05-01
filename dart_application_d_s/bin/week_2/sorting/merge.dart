class Sort{
List<int> mergeSort(List<int> arr){
  if(arr.length <=1){
    return arr;
  }
  int middle = arr.length ~/2;
  List<int> firstHalf = arr.sublist(0,middle);
  List<int> lastHalf = arr.sublist(middle);
  return join(mergeSort(firstHalf),mergeSort(lastHalf)); 
}
List<int> join(List<int>firstHalf,List<int> lastHalf){
  List<int> valueStoring = List<int>.from(firstHalf+lastHalf);
  int i =0;
  int j = 0;
  int k = 0;
  while(i<firstHalf.length&& j<lastHalf.length){
    if(firstHalf[i]<lastHalf[j]){
      valueStoring[k++] = firstHalf[i++];
    }else{
      valueStoring[k++] = lastHalf[j++];
    }
  }
  while(i<firstHalf.length){
    valueStoring[k++] = firstHalf[i++];

  }
  while(j<lastHalf.length){
    valueStoring[k++] = lastHalf[j++];
  }
  return valueStoring;
}

}

void main() {
  Sort value = Sort();
  List<int> arr = [7, 4, 166, 32, 11, 0, 444];
  print(value.mergeSort(arr));
}