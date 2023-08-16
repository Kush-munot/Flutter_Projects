void Integersz() {
  int a = 10;
  print(a);
  print(a + 10);
  print(a - 10);
  print(a / 10);
  print(a * 10);
  print(a % 3);
  print(a ~/ 3);
  print(a++);
  print(++a);
  print(a--);
  print(--a);
}

void FloatingPt() {
  double d = 199.99;
  print(d);
  print(d.toStringAsExponential(4));
  print(d.toStringAsFixed(4));
  print(d.toStringAsPrecision(4));
}

void Stringz() {
  String s = 'Kush here !!';
  print(s);

  String ms = '''
  Hello
  Kush
  Here
''';
  print(ms);

  print(s.toLowerCase());
  print(s.toUpperCase());
  print(s.substring(0, 4));
  print(s.substring(4));
  /* String substring(int start,[int? end] ) */

  //String Concatination
  print('Kush' + 'is' + 'learning' + 'Flutter');

  print('$s has ${s.length} letters');

  //looping through the string
  for (int i = 0; i < s.length; i++) {
    print(s[i]);
  }

  //Regular Expressions
  var re = RegExp(r"(a*|b)*c");
  print(re.hasMatch("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa"));
  print(re.hasMatch("aaabaaabaaabaaabaaabcccc"));
}

void Booleanz(int num) {
  bool fl = num % 2 == 0;
  if (fl) {
    print("Even");
  } else {
    print("Odd");
  }
}

void main() {
  Integersz();
  FloatingPt();
  Stringz();
  Booleanz(21);
  Booleanz(20);
}
