class TreeNode{
  late  Map<int,TreeNode> children = {};
  late  bool isEndOfWord = false;
}

class Trie{
  late TreeNode root;

  Trie(){
    root = TreeNode();
  }
  insert(String word){
    TreeNode temp = root;
    for( int i=0;i<word.length;i++){
      String char = word[i];
    }
  }
}