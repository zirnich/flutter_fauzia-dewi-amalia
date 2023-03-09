# Fundamental Object Oriented Progamming

### OOP
#### Deskripsi
- program disusun dalam bentuk abstraksi object
- data dan proses diletakan pada abstraksi tersebut

#### Keuntungan 
- mudah di-trobleshoot
- mudah digunakan ulang

#### Komponen
- Class
- Object
- Property
- Method
- Inheritance
- Generics

### Class
- abstrakso dari sebuah benda (object)
- memiliki ciri-ciri yang disebut property
- memiliki sifat kemampuan yang disebut method

class
```
class Hewan{
    //property
    //method
}
```
membuat object
```
void main(){
    var h1 = Hewan();
    var h2 = Hewan();
}
```
### Property
- ciri-ciri suatu class
- hal-hal yang dimiliki siatu class
- memiliki sifat seperti variabel

property
```
class Hewan{
    var mata = 0;
    var kaki = 0;
}

```
contoh akses property
```
void main(){
    var h1 = Hewan();
    print(h1.mata);
}
```

### method
- sifat suatu class
- aktivitas yang dapat dikerjakan suatu class 
- memiliki sifat seperti fungsi

method
```
class Hewan{
    void bersuara(){
        print('');
    }
}
```
menjalankan method
```
void main (){
    var h1 = Hewan();
    h1.bersuara();
}
```