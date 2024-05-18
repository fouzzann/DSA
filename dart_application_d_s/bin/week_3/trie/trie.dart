class TrieNode {

  late Map<String, TrieNode> children = {};
  late bool isEndOfWord = false;

}

class Trie {
  late TrieNode root;

  Trie() {
    root = TrieNode();
  }
  
  void insert(String word) {
    TrieNode temp = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!temp.children.containsKey(char)) {
        temp.children[char] = TrieNode();
      }
      temp = temp.children[char]!;
    }
    temp.isEndOfWord = true;
  }

  // bool search(String word) {
  //   TrieNode temp = root;
  //   for (int i = 0; i < word.length; i++) {
  //     String char = word[i];
  //     if (!temp.children.containsKey(char)) {
  //       return false;
  //     }
  //     temp = temp.children[char]!;
  //   }
  //   return temp.isEndOfWord;
  // }


  bool search(String prefix) {
  TrieNode temp = root;
  for (int i = 0; i < prefix.length; i++) {
    String char = prefix[i];
    if (!temp.children.containsKey(char)) {
      return false; // Prefix not found in Trie
    }
    temp = temp.children[char]!;
  }
  return true; // Prefix found in Trie
}

  bool _isEmptyNode(TrieNode node) {
    return node.children.isEmpty && !node.isEndOfWord;
  }

  bool _deleteHelper(TrieNode node, String word, int index) {
    if (index == word.length) {
      if (!node.isEndOfWord) {
        return false;
      }
      node.isEndOfWord = false;
      return _isEmptyNode(node);
    }
    String char = word[index];
    if (!node.children.containsKey(char)) {
      return false;
    }
    bool shouldDeleteCurrentNode =
        _deleteHelper(node.children[char]!, word, index + 1);

    if (shouldDeleteCurrentNode) {
      node.children.remove(char);
      return _isEmptyNode(node);
    }
    return false;
  }
  void delete(String word) {
    if (word.isEmpty) return;
    _deleteHelper(root, word, 0);
  }

}

void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("application");
  trie.insert("banana");

  print(trie.search("app")); // true (words: "apple", "application")
  print(trie.search("ban")); // true (word: "banana")
  print(trie.search("pineapple")); // false
}