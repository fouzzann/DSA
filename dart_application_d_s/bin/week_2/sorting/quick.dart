partition(List<int> arr , int start , int end ){
 int pivot = arr[end];
  int i = start -1;
  for( int j=start;j< end; j++){
    if(arr[j]<pivot){
      i++;
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;

    }

  }
     int  temp = arr[i+1];
     arr[i+1] = arr[end];
     arr[end] = temp ;
     return i+1;
}
quickSort(List<int> arr, int start, int end ){
  if(start<end){
    int pi = partition(arr, start, end);
    quickSort(arr, start, pi -1);
    quickSort(arr, pi+1, end);

  }
}
 void main(){
    List<int>arr = [23,44,55,33,2,1,3];
     int start = 0;
     int end = arr.length -1;
     quickSort(arr, start, end);
     print(arr);
  }