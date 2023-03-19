abstract class Matematika {
  double hasil();
}

class KelipatanPersektuanTerkecil implements Matematika {
  late double x;
  late double y;

  @override
  double hasil() {
    double i = x > y ? x : y;
    while (true) {
      if (i % x == 0 && i % y == 0) {
        return i;
      }
      i++;
    }
  }
}

class FaktorPersektuanTerbesar implements Matematika {
  late double x;
  late double y;

  @override
  double hasil() {
    double i = x < y ? x : y;
    double fpt = 1;
    while (i > 1) {
      if (x % i == 0 && y % i == 0) {
        fpt = i;
        break;
      }
      i--;
    }
    return fpt;
  }
}

void main() {
  KelipatanPersektuanTerkecil kpk = KelipatanPersektuanTerkecil();
  kpk.x = 5;
  kpk.y = 10;
  double kpkResult = kpk.hasil();
  print('KPK dari ${kpk.x} dan ${kpk.y} adalah $kpkResult');

  FaktorPersektuanTerbesar fpbm = FaktorPersektuanTerbesar();
  fpbm.x = 24;
  fpbm.y = 48;
  double fpbmResult = fpbm.hasil();
  print('FPB ${fpbm.x} dan ${fpbm.y} adalah $fpbmResult');
}
