import 'dart:io';

class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

class LinkedList<T> {
  Node<T>? head;

  void insertAtEnd(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node<T>? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }
  void insertAtBeginning(T data) {
    Node<T> newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void display() {
    Node<T>? current = head;
    while (current != null) {
      stdout.write(current.data);
      if(current.next != null)
        stdout.write(" -> ");
      current = current.next;
    }
  }
}

void main() {
  LinkedList<int> linkedList = LinkedList<int>();
  
  linkedList.insertAtBeginning(5);
  linkedList.insertAtBeginning(10);
  linkedList.insertAtBeginning(100);
  linkedList.insertAtBeginning(90);
  linkedList.insertAtEnd(15);
  
  linkedList.display();
}
