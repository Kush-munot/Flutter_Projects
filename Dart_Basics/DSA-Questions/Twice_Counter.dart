//Given a list of N words. Count the number of words that appear exactly twice in the list.

import 'dart:io';

void main(){
  List<String> str = ['Geeks', 'For', 'Geeks','Kush', 'Munot','Kush', 'Munot'];
  Map<String,int> mp = {};

  for(int i=0;i<str.length;i++){
    mp[str[i]] = (mp[str[i]] ?? 0) + 1;
  }
  List<String> ans = [];
  mp.forEach((key, value) {
    if(value == 2){
      ans.add(key);
    }
  });

  print(ans);
}