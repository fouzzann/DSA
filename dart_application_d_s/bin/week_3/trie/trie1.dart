
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



  List<String> searchPrefix(String prefix) {
    TrieNode temp = root;
    List<String> words = [];
    // Traverse to the node corresponding to the prefix
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!temp.children.containsKey(char)) {
        // Prefix not found in Trie
        return [];
      }
      temp = temp.children[char]!;
    }
    // Collect words starting from the prefix node
    collectWords(temp, prefix, words);
    return words;
  }

  void collectWords(TrieNode node, String prefix, List<String> words) {
    if (node.isEndOfWord) {
      words.add(prefix);
    }
    for (var entry in node.children.entries) {
      String char = entry.key;
      TrieNode child = entry.value;
      collectWords(child, prefix + char, words);
    }
  }
}



void main() {
  Trie trie = Trie();
  trie.insert("apple");
  trie.insert("application");
  trie.insert("banana");

  List<String> wordsWithPrefix = trie.searchPrefix("app");
  print("Words with prefix 'app': $wordsWithPrefix");

  wordsWithPrefix = trie.searchPrefix("ban");
  print("Words with prefix 'ban': $wordsWithPrefix");

  wordsWithPrefix = trie.searchPrefix("pineapple");
  print("Words with prefix 'pineapple': $wordsWithPrefix");
}
