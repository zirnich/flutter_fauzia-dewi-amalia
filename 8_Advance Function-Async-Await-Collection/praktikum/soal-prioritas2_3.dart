void main() async {
  int num = 4;
  int fac = 1;
  print('faktorial dari $num');
  await factor(num, fac);
}

Future<void> factor(int num, int fac) async {
  await Future.delayed(Duration(seconds: 1), () {
    for (int i = num; i >= 1; i--) {
      fac *= i;
    }
    print(fac);
  });
}
