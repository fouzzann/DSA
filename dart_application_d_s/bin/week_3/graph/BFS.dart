import 'dart:collection';

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

  void bfsTraversal() {
    if (root == null) return;

    Queue<TreeNode> queue = Queue<TreeNode>();
    queue.add(root!);

    while (queue.isNotEmpty) {
      TreeNode node = queue.removeFirst();
      print(node.value);

      if (node.left != null) {
        queue.add(node.left!);
      }

      if (node.right != null) {
        queue.add(node.right!);
      }
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

  print("BFS Traversal:");
  bst.bfsTraversal();
}
