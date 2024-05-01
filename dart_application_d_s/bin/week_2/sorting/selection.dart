class Sort {
  selectionSort(List<int>arr){
    for(int i=0;i<arr.length-1;i++){
      int min = i;
      for( int j = i+1;j< arr.length;j++){
        if(arr[j]<arr[min]){
          min = j;
        }
      }
      if(min != i){
        int temp = arr[i];
        arr[i] = arr[min];
        arr[min] = temp;
      }
    }
    return arr;
  }
}
void main(){
  Sort value = Sort();
  List<int> arr = [ 7,9,5,6,2,1];
  print(value.selectionSort(arr));
}