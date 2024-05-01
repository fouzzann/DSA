int sum(List<int> arr, int index) {
  if (index == arr.length) {
    return 0;
  }
  return arr[index] + sum(arr, index + 1);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  int value = sum(arr, 0);
  print(value);
}