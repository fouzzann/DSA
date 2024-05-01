class Sort{
  bublesort(List<int>arr){
    for( int i =0;i<arr.length;i++){
      for( int j=0;j<arr.length-1;j++){
        if(arr[j]>arr[j+1]){
          int temp = arr[j];
          arr[j] = arr[j+1];
          arr[j+1] = temp ;
        }
      }
    }
    return arr;
  }
}


void main(){
  Sort value = Sort();
  List<int>arr = [23,5,12,6,1];
  print(value.bublesort(arr));
}