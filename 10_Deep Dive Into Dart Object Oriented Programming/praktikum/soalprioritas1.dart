class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  double sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  @override
  double volume() {
    return super.volume();
  }
}

void main() {
  BangunRuang bangun = BangunRuang(2, 9, 8);
  print("Volume bangun ruang: ${bangun.volume()}");

  Kubus kbs = Kubus(4);
  print("Volume kubus: ${kbs.volume()}");

  Balok blk = Balok(5, 4, 8);
  print("Volume balok: ${blk.volume()}");
}
