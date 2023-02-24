void main() {
  for (int i = 0; i < 7; i++) {
    var star = '';
    for (int j = (7 - i); j > 1; j--) {
      star += ' ';
    }
    for (int j = 0; j <= i; j++) {
      star += '* ';
    }
    print(star);
  }
}
