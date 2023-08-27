import 'dart:io';

class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

class LinkedList<T> {
  Node<T>? head;

  void insert(T data) {
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

  int length(){
    Node<T>? temp = head;
    int len = 0;
    while(temp != null){
      temp = temp.next;
      len = len+1;
    }
    return len;
  }

  void display() {
    Node<T>? current = head;
    while (current != null) {
      stdout.write(current.data);
      if (current.next != null) stdout.write(" -> ");
      current = current.next;
    }
  }

  void findNode(int len, int pos){
    Node<T>? temp = head;
    int p = len-pos;

    while(p != 0){
      temp = temp?.next;
      p = p-1;
    }
    print(temp?.data);
  }
}

void main() {
  LinkedList<int> linkedList = LinkedList<int>();

  linkedList.insert(5);
  linkedList.insert(10);
  linkedList.insert(15);
  linkedList.insert(20);
  linkedList.insert(25);
  linkedList.insert(30);
  linkedList.insert(35);
  linkedList.insert(40);
  linkedList.insert(45);


  linkedList.display();
  print('\n');

  int length = linkedList.length();
  linkedList.findNode(length, 4);


}
