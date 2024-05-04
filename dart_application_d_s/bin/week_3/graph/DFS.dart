class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;

  void insert(int value) {
    root = _insertNode(root, value);
  }

  TreeNode _insertNode(TreeNode? node, int value) {
    if (node == null) {
      return TreeNode(value);
    }

    if (value < node.value) {
      node.left = _insertNode(node.left, value);
    } else if (value > node.value) {
      node.right = _insertNode(node.right, value);
    }

    return node;
  }

  void dfsInOrder(TreeNode? node) {
    if (node != null) {
      dfsInOrder(node.left);
      print(node.value);
      dfsInOrder(node.right);
    }
  }

  void dfsPreOrder(TreeNode? node) {
    if (node != null) {
      print(node.value);
      dfsPreOrder(node.left);
      dfsPreOrder(node.right);
    }
  }

  void dfsPostOrder(TreeNode? node) {
    if (node != null) {
      dfsPostOrder(node.left);
      dfsPostOrder(node.right);
      print(node.value);
    }
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(8);
  bst.insert(3);
  bst.insert(1);
  bst.insert(6);
  bst.insert(4);
  bst.insert(7);
  bst.insert(10);
  bst.insert(14);
  bst.insert(13);

  print("In-order traversal:");
  bst.dfsInOrder(bst.root);

  print("\nPre-order traversal:");
  bst.dfsPreOrder(bst.root);

  print("\nPost-order traversal:");
  bst.dfsPostOrder(bst.root);
}
