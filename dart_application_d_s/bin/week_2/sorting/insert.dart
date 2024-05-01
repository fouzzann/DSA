class Sort {
  insertSort(List<int> arr){
    for( int i=1;i<arr.length;i++){
      int temp = arr[i];
      int j = i-1;
      while(j>=0 && arr[j]> temp){
        arr[j+1] = arr[j];
        j --;
      }
      arr[j+1] = temp;
    }
    return arr;
  }
}
void main (){
  Sort value = Sort();
  List<int> arr = [ 5,6,3,4,2,1];
  print(value.insertSort(arr));
}