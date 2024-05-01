class HashTable{
  List<List<int>> table;
  late int size;

  HashTable(int size) : table = List.generate(size, (index) => []){
    // ignore: prefer_initializing_formals
    this. size = size;
  }

  hashfun( dynamic key){
    return key.hashCode.abs()% size;
  }

  insert(dynamic key, int value){
    int index = hashfun(key);
    return table[index].add(value);
  }

  remove(dynamic key ,int value){
    int index = hashfun(key);
    return table[index].remove(value);
  }

  List<int> search(dynamic key){
    int index = hashfun(key);
    return table[index];
  }

  display(){
 for(int i =0;i<size;i++){
  List<int> temp = table[i];
  print(temp);


}
}
}
void main(){
  HashTable value = HashTable(10);
  value.insert("apple", 1);
  value.insert("orange", 2);
  value.insert("mango", 3);
  value.remove("apple", 1);
  print("search ${value.search("orange")}");
  value.display();
}