class Hewan {
  String jenis;
  int berat;

  Hewan(this.jenis, this.berat);
}

class Mobil {
  int kapasitas;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (totalMuatan() + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      print("Berhasil menambahkan hewan ${hewan.jenis} ke dalam mobil.");
    } else {
      print(
          "Kapasitas muatan tidak mencukupi untuk menambahkan hewan ${hewan.jenis} ke dalam mobil.");
    }
  }

  int totalMuatan() {
    int total = 0;
    for (Hewan hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }
}

void main() {
  Hewan kucing = Hewan("Kucing", 10);
  Hewan capybara = Hewan("capybara", 30);
  Hewan sapi = Hewan("Sapi", 50);

  Mobil mobil = Mobil(100);
  mobil.tambahMuatan(sapi);
  mobil.tambahMuatan(capybara);
  mobil.tambahMuatan(kucing);

  print("Total muatan mobil: ${mobil.totalMuatan()} kg.");
}
