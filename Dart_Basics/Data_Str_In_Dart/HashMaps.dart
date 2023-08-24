
void main() {
  List<int> array = [1, 2, 3, 2, 1, 3, 4, 5, 4, 3, 5];

  Map<int, int> frequencyMap = createFrequencyMap(array);

  print(frequencyMap);
}

Map<int, int> createFrequencyMap(List<int> array) {
  Map<int, int> frequencyMap = {};

  for (int element in array) {
    frequencyMap[element] = (frequencyMap[element] ?? 0) + 1;
  }

  return frequencyMap;
}
