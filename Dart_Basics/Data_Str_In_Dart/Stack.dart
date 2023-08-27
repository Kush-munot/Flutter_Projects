class Stack<T> {
  List<T> _list = [];

  void push(T value) {
    _list.add(value);
  }

  T pop() {
    if (isEmpty) {
      throw StateError("Stack is empty");
    }
    return _list.removeLast();
  }

  T peek() {
    if (isEmpty) {
      throw StateError("Stack is empty");
    }
    return _list.last;
  }

  bool get isEmpty => _list.isEmpty;

  int get length => _list.length;

  void display(){
    print(_list);
  }
}

void main() {
  Stack<int> stack = Stack<int>();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  print("Stack length: ${stack.length}"); // Output: Stack length: 3

  print("Popped: ${stack.pop()}");
  stack.display();
}
