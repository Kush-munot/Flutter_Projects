
int checkPal(int n) {
  int rev = 0;
  while (n != 0) {
    int digit = n % 10;
    rev = rev * 10 + digit;
    n = (n ~/ 10);
  }
  print("Reversed Number is ${rev}");
  return rev;
}

void main() {
  List<int> n = [1221,1223221, 1234, 12321];
  for(var num in n){
    int reversed = checkPal(num);
    if (reversed == num) {
      print("Yes Number is a Palindrome \n");
    } else {
      print("No Number is not a Palindrome \n");
    }
  }
}
