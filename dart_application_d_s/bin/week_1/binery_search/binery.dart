class sample{
  void display(List<int> nums , int left, int right , int target){
    nums.sort();
    while(left<right){
      var middle = (left+right)~/2;
      if(nums[middle] == target ){
       print('$middle');
       break;
      }else if(nums[middle] > target){
         left = middle ++;
      }else{
         right = middle --;
      }
    }
  }
}

void main (){
  sample Sample = sample();
  List<int> nums = [1,2,3,4,5];
  int target = 3;
  int left = 0;
  int right = nums.length;
  Sample.display(nums,left,right,target);
}