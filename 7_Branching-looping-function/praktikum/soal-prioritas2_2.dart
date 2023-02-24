void main() {
  //segitiga atas
  for (int i = 0; i < 6; i++) {
    var st = ' ';
    for (int j = 0; j <= i; j++) {
      st += ' ';
    }
    for (int t = 0; t <= 6 - i; t++) {
      st += '0 ';
    }
    print(st);
  }
//segitiga bawah
  for (int i = 0; i < 7; i++) {
    var st = ' ';
    for (int j = (7 - i); j > 1; j--) {
      st += ' ';
    }
    for (int j = 0; j <= i; j++) {
      st += ' 0';
    }
    print(st);
  }
}
