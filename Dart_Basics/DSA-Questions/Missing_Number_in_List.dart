import 'dart:io';

void main(){
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  double sum = 0;
  for(int i=0;i<n-1;i++){
    arr.add(int.parse(stdin.readLineSync()!));
    sum += arr[i];
  }
  double temp = (n*(n+1))/2;
  print("the missing number is ${temp - sum}");
}