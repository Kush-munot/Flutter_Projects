class Queue<T> {
  List<T> _list = [];

  void enqueue(T value) {
    _list.add(value);
  }

  T dequeue() {
    if (isEmpty) {
      throw StateError("Queue is empty");
    }
    return _list.removeAt(0);
  }

  bool get isEmpty => _list.isEmpty;

  int get length => _list.length;
  void display(){
    print(_list);
  }
}

void main() {
  Queue<String> queue = Queue<String>();

  queue.enqueue("Alice");
  queue.enqueue("Bob");
  queue.enqueue("Charlie");

  print("Queue length: ${queue.length}"); // Output: Queue length: 3

  print("Dequeued: ${queue.dequeue()}");
  
  queue.display();
}
