import 'dart:io';

void main() {
  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  print(arr.first); //First Element
  print(arr.last); //Last Element
  print(arr.length); //Length of an Array

  for (var i in arr) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  stdout.write('Enter the size of the list: ');
  int n = int.parse(stdin.readLineSync()!);

  List<int> myList = [];

  for (int i = 0; i < n; i++) {
    stdout.write('Enter element ${i + 1}: ');
    int element = int.parse(stdin.readLineSync()!);
    myList.add(element);
  }

  print('The list you entered is: $myList');

  List<String> str = [];
  stdout.write("Enter the size of List - ");
  int? m = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < m; i++) {
    str.add(stdin.readLineSync()!);
  }

  stdout.write("Printing the List - ");
  String ans = str.join(' ');
  print(ans);
}
