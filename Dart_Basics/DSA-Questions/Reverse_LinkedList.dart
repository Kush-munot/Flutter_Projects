import 'dart:io';

class Node<T>{
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

  void reverse(){
    if (head == null || head?.next == null) {
      return;
    }
    Node<T>?prev = null;
    Node<T>?curr = null;
    Node<T>?nxt = head;

    while(nxt != null){
      prev = curr;
      curr = nxt;
      nxt = nxt.next;
      curr.next = prev;
    }
    head = curr;
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
  
  linkedList.insert(5);
  linkedList.insert(10);
  linkedList.insert(15);
  linkedList.insert(20);
  linkedList.insert(25);
  linkedList.insert(30);
  linkedList.insert(35);
  
  linkedList.display();
  print('\n');
  linkedList.reverse();

  linkedList.display();
}