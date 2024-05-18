class TrieNode{
  late Map<String,TrieNode> children = {};
  late bool isEndOfWord = false;
}

class Trie{
 late TrieNode root;
 Trie(){
  root = TrieNode();
 }
 insert(String word){
  TrieNode temp = root;
  for(int i=0;i<word.length;i++){
    String char = word[i];
    if(!temp.children.containsKey(char)){
      temp.children[char] = TrieNode();
    }
    temp = temp.children[char]!;
  }
  temp.isEndOfWord = true;
 }

 List<String> searchPrefix(String prefix){
  TrieNode temp = root;
  List<String> words = [];
  for(int i=0;i<prefix.length;i++){
    String char = prefix[i];
    if(!temp.children.containsKey(char)){
      return [];
    }
    temp  = temp.children[char]!;
  }
  collectwords(temp,prefix,words);
  return words;
 }

 collectwords(TrieNode node, String prefix,List<String> words){
    if(node.isEndOfWord){
      words.add(prefix);
    }
    for(var entry in node.children.entries){
      String char = entry.key;
      TrieNode child = entry.value;
      collectwords(child, prefix+char, words);
    }
 }
}

void main(){
  Trie node = Trie();
  node.insert("adnan");
   node.insert("a");
    node.insert("ad");
     node.insert("adn");
      node.insert("adhil");
       node.insert("mango");
        node.insert("man");
         node.insert("mad");
          node.insert("a");

          List<String> searchPrefix = node.searchPrefix("a");
          print("prefix word of are :$searchPrefix  ");
          searchPrefix = node.searchPrefix("ma");
           print("prefix word of ma :$searchPrefix  ");
}