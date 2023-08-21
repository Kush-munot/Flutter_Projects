void main() {
  int n = 10;

//! For Loop
  for (int i = 1; i <= n; i++) {
    print(i);
  }

//! While Loop
  int temp = n;
  while (temp != 0) {
    print(temp);
    temp--;
  }

//! Do While Loop
  temp = n;
  do {
    print(temp);
    temp--;
  } while (temp != 0);

//! For In Loop
  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var nums in arr) {
    if (nums >= 4) {
      print(nums * 5);
    }
  }
}
