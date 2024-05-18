class Node{
  var value;
  Node? left;
  Node? right;
  Node(this.value);
}


class BineryTree{
  Node? root;
  insert(int value){
    root = insertval(root, value);
  }
  Node? insertval (Node? root, int value){
    if(root==null){
      return Node(value);
    }
    if(value<root.value){
      root.left = insertval(root.left, value);
    }else if(value>root.value){
      root.right = insertval(root.right, value);
    }
    return root;
  }

  dis(Node? node){
    if(node!=null){
      dis(node.left);
      print(node.value);
      dis(node.right);
    }
  }

  delete( int value){
    root  = deleteval(root,value);
  }
  Node? deleteval(Node? root, int value){
    if(root == null){
      return root;
    }
    if(value<root.value){
      root.right = deleteval(root.left, value);
    }else if(value>root.value){
      root.right = deleteval(root.right, value);
    }else{
      if(root.left == null){
        return root.right;
      }else if(root.right == null){
        return root.left;
      }

    }
    return root;
  }

bool isBST(){
  int? prev;
  bool isBSTval(Node? node){
    if(node== null) return true;
    if(!isBSTval(node.left)) return false;
    if(prev!=null&& prev!>= node.value) return false;
    prev = node.value;
    return isBSTval(node.right);
  }
  return isBSTval(root);
}

search(int value){
  return searchval(root, value);
}
Node? searchval(Node? node, int value){
  if( node== null|| node.value == value){
return node;
  }
  if(value<node.value){
    return searchval(node.left, value);
  }else if(value>node.value){
    return searchval(node.right, value);
  }
}

}
void main(){
  BineryTree node = BineryTree();
  node.insert(1);
   node.insert(2);
    node.insert(3);
     node.insert(4);
     node.delete(2);
     bool isBST = node.isBST();
      print("$isBST ");
      Node? search  = node.search(2);
      if(search!=null){
        print("${search.value} is founded at BST");
      }else{
        print('sorry value not found');
      }
    
  node.dis(node.root);
}