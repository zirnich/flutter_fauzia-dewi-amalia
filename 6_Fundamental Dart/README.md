# Fundamental dart

### Dart
dart adalah bahasa pemograman yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat.
aplikasi yang di buat dengan Dart merupakan aplikasi yang berjalan di sisi client(frontend).
### Dasar pemrograman Dart
- Fungsi Main
    - bagian yang dijalankan pertama
    - memiliki tipe data void atau int
    - dengan nama **main**
- **print** digunakan untuk menampilkan data ke layar
```
void main(){
    print('hello world');
}
```

### Variabel

- Digunakan untuk menyimpan data
- Memiliki nama 
- Memiliki tipe data

menggunakan var dan diikuti nama variabel secara otomatis tipe data variabel tersebut Null.
```
void main(){
    var usia;
}
```
#### Memberi nilai pada Variabel
menggunakan (=)
```
void main(){
    var usia;
    usia = 18;
}
```
#### Inisiasi Variabel
deklarasi dan memberia nilai secara bersamaan
```
void main(){
    var usia = 18;
   
}
```

### Konstanta

- Digunakan untuk menyimpan data
- Memiliki nama 
- Memiliki tipe data
- nilai tetap

#### Membuat Konstanta
mengunakan final
```
void main(){
    final usia = 18;
   
}
```

### Tipe Data

- Jenis data yang dapat dikelola
- Tpe data sederhana disebut primitive data type 

#### Jenis Tipe data
##### int 
bilangan bulat
menggantikan var dengan int harus bilangan bulat
```
void main(){
    int usia = 18;
}
```
##### double 
bilangan pecahan
- menggantikan var dengan double dan harus bilangan pecahan
- penulisan pecahan dengan tanda titik
```
void main(){
    double beratbadan = 48.8;
}
```
##### bool
true/false
mengantikan var dengan bool dan data harus true/false
```
void main(){
    bool wanita = true;
}
```
##### string
teks
- menggantikan var dengan string berupa teks
- penulisan teks di awali dan di akhiri tanda kutip
```
void main(){
    String nama = 'zirnich';
}
```
### Operator

- Digunakan untuk operasi pengolahan data
- data yang dikelola disebut operand

##### Arithmetic
untuk perhitungan matematis
```
void main(){
    print(4+8);
}
```
##### Assignment
memberi nilai pada variabel
=,+=,*=,/=,%=
```
void main(){
    var tinggi = 176;
    usia = 18;
}
```
##### Comparison
membandingkan kesetaraan nilai
==,<,<=,>,>=
```
void main(){
    print(4 == 8);
}
```
##### Logical
menggabungkan beberapa kondisi
&&,||,!
```
void main(){
    print(4 == 8 && 9 == 8);
}
```
