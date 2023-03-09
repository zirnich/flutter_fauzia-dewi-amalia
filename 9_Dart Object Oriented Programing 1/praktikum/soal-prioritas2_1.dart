class Calculator {
  // penjumlahan
  double tambah(double a, double b) {
    return a + b;
  }

  // pengurangan
  double kurang(double a, double b) {
    return a - b;
  }

  // perkalian
  double kali(double a, double b) {
    return a * b;
  }

  // pembagian
  double bagi(double a, double b) {
    return a / b;
  }
}

void main() {
  Calculator calculator = Calculator();

  double hasil = calculator.tambah(2, 3);
  hasil = calculator.kurang(hasil, 1);
  hasil = calculator.kali(hasil, 2);
  hasil = calculator.bagi(hasil, 5);

  print(hasil); //
}
