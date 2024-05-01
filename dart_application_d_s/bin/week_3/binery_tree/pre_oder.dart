class Node{
  var value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BineryTree{
  Node? root;

  insert( int value){
    root = insertval(root, value);
  }
  Node? insertval(Node? root , int value){
    if(root == null){
      return Node(value);
    }
    if(value<root.value){
      root.left = insertval(root.left, value);
    }else if(value > root.value){
      root.right = insertval(root.right, value);
    }
    return root;
  }

  delete(int value){
    root = deleteval(root, value);
  }

  Node? deleteval (Node? root , int value){
    if(root == null){
      return root;
    }
    if(value<root.value){
      root.left = deleteval(root.left, value);
    }else if(value>root.value){
      root.right = deleteval(root.right, value);
    }else{
      if(root.left== null){
        return deleteval(root.right, value);
      }else if( root.right == null){
        return deleteval(root.left, value);
      }
    }
    return root;
  }


search(int value){
return searchval(root, value);
}
Node? searchval( Node? node , int value){
if(node == null||node.value == value){
  return node;
}
if(value<node.value){
  return searchval(node.left, value);
}else if( value>node.value){
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
  while(node!.right!=null){
    node = node.right;
  }
  return node.value;
}

findCloss(Node? node, int targ){
  int clossVal = node!.value;
  while(node!=null){
    if((node.value - targ).abs()<(clossVal - targ).abs()){
      clossVal = node.value;
    }
    if(node.value == targ){
      break;
    }else if(node.value > targ){
      node = node.left;
    }else{
      node = node.right;
    }
  }
  return clossVal;
}

  dis(Node? node){
    if(node!= null){
     print(node.value);
      dis(node.left);
      dis(node.right);
    }
  }

bool isBST(){
  int? prev;
  bool isBSTval(Node? node){
    if(node == null)return true;
    if(!isBSTval(node.left)) return false;
    if(prev!=null && prev!>=node.value) return false;
    prev = node.value;
    return isBSTval(node.right);
  }

  return isBSTval(root);

}

find2ndlargest(Node? node){
  if(node!.right ==null&& node.left!=null){
    return largest(node.left);
  }
  if(node.right!=null&& node.right!.left == null&& node.right!.right == null){
    return node.value;
  }
  return find2ndlargest(node.right);
}


find2ndsmallest(Node? node){
  if(node!.left==null && node.right!=null){
    return smallest(node.right);
  }
  if(node.right!=null&& node.right!.left==null && node.right!.right == null){
    return node.value;
  }
  return find2ndsmallest(node.right);
}

}
void main(){
  BineryTree tree = BineryTree();
  tree.insert(1);
  tree.insert(2);
  tree.insert(3);
  tree.insert(4); 
  tree.insert(5);
  tree.insert(6);
  tree.insert(7);
  tree.delete(3);

Node? searchval = tree.search(2);
if(searchval!=null){
  print('value found ${searchval.value} at tree');
}else{
  print('no data found');
}

int smallest = tree.smallest(tree.root);
if(smallest!=null){
  print('samllest value is ${smallest}');
}

int largestt = tree.largest(tree.root);
if(largestt!=null){
  print('largest value is ${largestt}');
}

int targ = 10;
int clossVal = tree.findCloss(tree.root, targ);
if(clossVal!=null){
  print("clossest value is ${clossVal}");
}else{
  print('no data fond');
}

bool isBST = tree.isBST();
print('is the binery tree is a BST? $isBST');

int secondlargest = tree.find2ndlargest(tree.root);
if(secondlargest!=null){
  print('${secondlargest} is the 2nd largest value ');
}else{
  print('no data found');
}

int secondsmallest = tree.find2ndsmallest(tree.root);
if(secondsmallest!=null){
  print("${secondsmallest} is the smallest value ");
}

  tree.dis(tree.root);

}
