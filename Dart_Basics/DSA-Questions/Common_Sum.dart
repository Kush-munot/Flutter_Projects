import 'dart:io';

void main() {
  stdout.write("Please enter size of First Array - ");
  int? n1 = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter size of Second Array - ");
  int? n2 = int.parse(stdin.readLineSync()!);
  stdout.write("Please enter elements of First Array \n");
  List<int> arr1 = [];
  for (int i = 0; i < n1; i++) {
    arr1.add(int.parse(stdin.readLineSync()!));
  }
  stdout.write("Please enter elements of Second Array \n");
  List<int> arr2 = [];
  for (int i = 0; i < n2; i++) {
    arr2.add(int.parse(stdin.readLineSync()!));
  }


  arr1.sort();
  arr2.sort();
  int i = 0, j = 0;
  Set<int> common = {};
  while (i != n1 && j != n2) {
    if (arr1[i] == arr2[j]) {
      common.add(arr1[i]);
      i++;
      j++;
    } else if (arr1[i] < arr2[j]) {
      i++;
    } else {
      j++;
    }
  }
  print(common);

  int ans = 0;
  for (int num in common) {
    ans += num;
  }
  print(ans);
}
