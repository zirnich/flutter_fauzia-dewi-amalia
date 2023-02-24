void main() {
  var nilaiA = 10;
  var nilaiB = 40;
  var nilaiC = 50;
  var fac = 1;
  var fac1 = 1;
  var fac2 = 1;

  for (var i = nilaiA; i >= 1; i--) {
    fac *= i;
  }
  print('faktorial dari 10 adalah $fac');
  for (var i = nilaiB; i >= 1; i--) {
    fac1 *= i;
  }
  print('faktorial dari 40 adalah $fac1');
  for (var i = nilaiC; i >= 1; i--) {
    fac2 *= i;
  }
  print('faktorial dari 50 adalah $fac2');
}
