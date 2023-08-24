import 'dart:io';

//Given an array A[] of length N. For each index, i (1<=i<=N), find the difference between the number of distinct elements in the left and right side in the of the current element in the array.

void main() {
  stdout.write("Please enter size of Array - ");
  int? n = int.parse(stdin.readLineSync()!);
  Set<int> left = {};
  Set<int> right = {};
  List<int> ans = [];
  List<int> arr = [];
  stdout.write("Please enter elements of Array - ");
  for (int i = 0; i < n; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {
      left.add(arr[j]);
    }
    for (int j = arr.length - 1; j > i; j--) {
      right.add(arr[j]);
    }
    ans.add(left.length - right.length);
    left.clear();
    right.clear();
  }
  print(ans);
}
