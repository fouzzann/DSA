class Node{
  var value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BineryTree{
  Node? root;
  insert(int value){
    root = insertval(root , value);
  }
  Node? insertval(Node? root, int value){
    if(root == null){
      return Node(value);
    }
    if(value<root.value){ 
      root.left = insertval(root.left, value);
    }else if(value>root.value){
      root.right = insertval(root.right, value);
    }
    return root;
  }

  bool isBST(){
    int? prev;
    bool isBSTval(Node? node){
      if(node == null) return true;
      if(!isBSTval(node.left)) return false;
      if(prev!=null&& prev!>=node.value) return false;
      prev = node.value;
      return isBSTval(node.right);
    }
    return isBSTval(root);
  }

  dis(Node? node){
    if(node!=null){
      dis(node.left);
      print(node.value);
      dis(node.right);
    }
  }

  delete(int value){
    root = deleteval(root,value);
  }
  Node? deleteval( Node? root, int value){
    if(root== null){
      return root;
    }
    if(value<root.value){
      root.left = deleteval(root.left, value);
    }else if( value>root.value){
      root.right = deleteval(root.right, value);
    }else{
      if(root.left == null){
        return deleteval(root.right, value);
      }else if(value>root.value){
        return deleteval(root.left, value);
      }

    }
    return root;
  }

  search( int value){
    return searchval(root,value);
  }
  Node? searchval(Node? node, int value){
    if(node == null|| node.value == value){
      return node;
    }
    if(value<node.value){
      return searchval(node.left, value);
    }else if( value> node.value){
      return searchval(node.right, value);
    }
  }

  smallest(Node? node){
    while(node!.left!= null){
      node = node.left;
    }
    return node.value;
  }
  largest(Node? node){
    while(node!.right!= null){
      node = node.right;
    }
    return node.value;
  }

find2ndlargest(Node? node){
  if(node!.right== null&& node.left!= null){
    return largest(node.left);
  }
  if(node.right!= null&& node.right!.left == null&& node.right!.right== null){
    return node.value;

  }
  return find2ndlargest(node.right);
}
find2ndsmallest(Node? node){
  if(node!.left == null&& node.right!= null){
    return smallest(node.right);
  }
  if(node.right!= null&& node.right!.left== null&& node.right!.right == null){
    return node.value;
  }
  return find2ndsmallest(node.right);
}
}

void main(){
  BineryTree node = BineryTree();
  node.insert(1);
  node.insert(2);
  bool isBSt = node.isBST();
  print('is this BST ? $isBSt');
  node.delete(2);
  Node searchval = node.search(1);
  if(searchval!=null){
    print('vale is gound ${searchval.value}');
  }else{
    print('no value found');
  }
  node.dis(node.root);
}