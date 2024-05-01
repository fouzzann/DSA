class Node {
  int data;
  Node? next;

  Node(this.data);
}

bool isCircular(Node? head) {
  if (head == null) return false;

  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;

    if (slow == fast) {
      return true; // Circular linked list detected
    }
  }

  return false; // Not a circular linked list
}

void main() {
  Node head = Node(1);
  Node node2 = Node(2);
  Node node3 = Node(3);
  Node node4 = Node(4);

  head.next = node2;
  node2.next = node3;
  node3.next = node4;
  // Uncomment the line below to make the linked list circular
  // node4.next = head;

  print(isCircular(head)); // Output: false
}