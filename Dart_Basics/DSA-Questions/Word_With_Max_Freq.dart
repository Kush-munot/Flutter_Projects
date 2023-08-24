
void main() {
  String str = 'this is not right this is';
  var arr = str.split(' ');
  
  Map<String, int> unsortedMap = {};

  for(String word in arr){
    unsortedMap[word] = (unsortedMap[word] ?? 0) + 1;
  }

  Map<String, int> sortedMap = sortMapByValue(unsortedMap);
  print(sortedMap.keys.first);
  print(sortedMap);
}

Map<String, int> sortMapByValue(Map<String, int> unsortedMap) {
  List<MapEntry<String, int>> sortedEntries = unsortedMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  return Map.fromEntries(sortedEntries);
}
