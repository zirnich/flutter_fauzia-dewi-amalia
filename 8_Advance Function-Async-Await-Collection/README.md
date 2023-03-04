# Advance Function, Async Await, Collection Dart

### Advance Function
#### Anonymous Function
- tidak memiliki nama 
- fungsi sebagai data

```
(){
  // perintah yang dijalankan saat fungsi di panggil
}

```
contoh 
```
var hello = (){
    print('hello');
};
var jumlah = (inta, int b){
    return a+b;
};
void main(){
    hello();
    print(jumlah(1,2));
}
```
#### Arrow Function
- Dapat memiliki nama atau tidak
- Berisi return data
- nilai return fungsi ini diambil dari data tersebut

```
() => proses_yang_dijalankan_saat_fungsi_dipanggil();

```
contoh 
- fungsi hello melakukan print di dalamnya
- fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print
```
var hello = () => print('hello');
var jumlah = (inta, int b) => a+ b;
void main(){
    hello();
    print(jumlah(1,2));
}
```

### Async-Await
- menjalankan beberapa proses tanpa perlu menunggu
- proses di tulis dalam bentuk fungsi 
- await akan menunggu hingga proses async selesai

```
Future<void> p1 () async{
    await Future.delayed(Duration(secons: 1), (){
        print('hello dari p1');
    });
}
void p2 () {
    print('hello p2');
}
void main () async{
    await p1 ();
    p2();
}
```

### Tipe Data Future

- data yang dapat di tunggu
- membawa data return dari fungsi async

```
Future<void> p1 () async{
    await Future.delayed(Duration(secons: 1), (){
        return 'hello dari p1';
    });
}

void main () async{
    var data = await p1 ();
    print(data);
}
```
### Collection
kumpulan data pada satu tempat

#### List
menyimpan data (elemen) secara berbaris
tiap data memiliki index
```
void main() async {
    var num = [];
    num.add(10);
    num.add(20);
    num.add(48);
    print(num);
    
    print(num[0]);
    print(num[1]);
    print(num[2]);
}
```
list contoh 
```
void main () async {
    var num =[10,20,48];
    print(num);
    
    for(var no iin num){
        print(no);
    }
}
```
#### Map
menyimpan data secara key-value
key berguna selayaknya index pada list
```
void main() async {
   var student ={};
   student['name'] = 'shani indira';
   student['age'] = 25;
   print(student);
   
   print(student['name']);
   print(student['age']);
}
```
Map contoh
```
void main() async {
    var student = {
        'name' :'shani indira',
        'age' : 25
    };
    print(student);
    
    for(var key in student.keys)(
    print(student[key]);
}
```
