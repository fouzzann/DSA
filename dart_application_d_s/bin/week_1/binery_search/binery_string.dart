
class Sample {
  void display(List<String> words, int left, int right, String target) {
    words.sort();
    print('$words');
    while (left <= right) {
      var middle = (left + right) ~/ 2;
      if (words[middle] == target) {
        print('$middle');
        break;
      } else if (words[middle].compareTo(target) > 0) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }
  }
}

main() {
  Sample sample = Sample();
  List<String> words = ['apple', 'banana', 'cherry', 'orange', 'pear'];
  String target = 'cherry';
  int left = 0;
  int right = words.length - 1;
  sample.display(words, left, right, target);
}
