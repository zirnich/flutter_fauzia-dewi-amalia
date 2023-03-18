# Deep Dive into Dart Object Oriented programming

### Construcktor
#### Deskripsi
- Method yang di jalankan saat pembuatan object
- dapat menerima parameter
- tidak memiliki return
- nama sama dengan class


```
class Hewan{
    var mata ;
    var kaki;
   Hewan{
    var mata = 0;
    var kaki = 0;
}
}

```

### inheritance
- membuat class baru dengan memanfaatkan class yang sudah ada
- bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru


```
class kambing extends Hewan{
    Kambing(){
    var mata = 2;
    var kaki = 4;
    }
}

```

### method Overriding
- menuliskan method yang ada pada super-class
- bertujuan agar class memiliki method yang sama, dengan proses yang berbeda

#### melakukan overriding
- dilakukan pada class yang melakukan inheritance
- method sudah ada pada class induk
- method ditulis ulang seperti membuat method baru pada class anak
- ditambahkan tanda @overriding dibaris sebelumnya method dibuat
```
class Hewan{
    reproduksi(){
        print('tidak diketahui');
    }
    bernapas(){
        print('tidak diketahui');
    }
}
class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
    @override
    bernapas(){
        print('paru-paru');
    }
}
```

### interface
- berupa class
- menunjukan method apa saja yan ada pada suatu class
- seluruh method wajib di-override
- digunakan dengan menggunakan implements

#### menggunakan interface
- sekilas mirip inheritance
- pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk
```
class Hewan{
    reproduksi(){
        print('tidak diketahui');
    }
    bernapas(){
        print('tidak diketahui');
    }
}
class Kambing implements Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
    @override
    bernapas(){
        print('paru-paru');
    }
}
```

### Abstract Class
- berupa class abstrak
- menunjukan method apa saja yang ada pada suatu class
- digunakan dengan menggunakan extends
- tidak dapat dibuat object
- tidak semua method harus di-override

```
class Hewan{
    reproduksi(){
        print('tidak diketahui')
    }
    bernapas(){
        print('tidak diketahui')
    }
}
class Kambing extends Hewan{
    @override
    reproduksi(){
        print('melahirkan');
    }
}
```
### Polymorphism
- kemampuan data berubah menjadi bentuk lain
- tipe data yang dapat digunakan adalah super class
- dapat dilakukan pada class dengan extends atau implements

#### melakukan polymorphism
object dari class kambing dengn tipe data class hewan
```
void maint(){
    Hewan k1 = Kambing();
    k1.reproduksi();
    k1.bernapas();
}
```
### Generics
- dapat digunakan pada class atau fungsi
- memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
- tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi

#### Membuat class dengan Generics
- class hadiah dapat dimasukan data dengan tipe t
- tipe t dapat digunakan di seluruk class hadiah
```
class Hadiah<T>{
    var isi;
    Hadiah(T i){
        isi = i;
    }
}
```
#### Menggunakan class dengan generics
setelah nama class, menjadi tempat tipe data yang diinginkan
```
void main(){
    
    var h1 = Hadiah<String>('mobil');
    print(h1.isi);
    
    var h2 = Hadiah<int>(10);
    print(h2.isi);
}
```
#### membuat fungsi dengan generics
setelah nama fungsi, menjadi tempat variabel generics
```
void cektipe<T>(T data){
    print(data.runtimeType);
}
```
#### menggunakan fungsi dengan generics
setelah nama fungsi, menjadi tempat tipe data yang diinginkan
```
void main(){
    cekTipe<String>("satu");
    cekTipe<int>(1);
}
```






