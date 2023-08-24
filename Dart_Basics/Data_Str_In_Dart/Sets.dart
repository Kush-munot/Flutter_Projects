import 'dart:io';

void main(){
  Set<int> ss = {};
  List<int> arr = [1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,7,8,8,9,10];

  // ss.addAll(arr);
  for(var num in arr){
    ss.add(num);
  }
  print(ss);
}