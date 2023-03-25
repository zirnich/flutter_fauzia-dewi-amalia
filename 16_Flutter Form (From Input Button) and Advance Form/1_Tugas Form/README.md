# Flutter Form

#### Form
##### Deskripsi
- menerima isian data dari pengguna
- isian data dapat lebih dari satu

##### Membuat form
- menggunakan statefulwidget
- keadaan form disimpan menggunakan globalkey<formstate>

```
var formKey = GlobalKey<FormState>();
Form(
    key: formKey,
    child: inputWidgets,
    );
```
#### Input

##### TextField
- menerima isian data dari pengguna
- isian data dapat lebih dari satu

##### Membuat TextField
- data di ambil mengunakan texteditingcontroller
- isian data berupa teks
```
var inputController = textEditingControler();
TextField(
    Controller: inputController,
    );
```
##### Radio
- memberi opsi pada pengguna
- hanya dapat memilih satu opsi

##### Membuat Radio
data diambil menggunakan property dengan tipe data sesuai value pada radio
```
var radioValue = '';
Radio<String>(
value: 'Laki-laki',
groupValue: radioValue,
onChanged: (String? value){
    setState((){
       radioValue = value?? '';
       });
    },
);
```
##### Checkbox
- memberi opsi pada pengguna
- Dapat memilih beberapa opsi

##### membuat Checkbox
data diambil menggunakan property bertipe bool
```
var checkValue = false ;
Checkbox(
value: checkValue,
onChanged: (bool? value){
    setState((){
      checkValue = value?? flase;
       });
    },
);
```
##### Dropdown Button
- memberi opsi pada pengguna
- hanya dapat memilih satu opsi
- opsi tidak ditampilkan d awal, hanya tampil jika ditekan

##### Membuat dropdownButton
data diambil menggunakan property dengan tipe data sesuai value pada dropdown menuitem
```
dropdownValue = 0;
DropdownButton(
value: dropdownValue,
onChanged: (int? value){
    setState((){
       dropdownValue = value?? 0;
       });
    },
    items: const [
    DropdownMenuItem(
        value:0,
        child: Text('pilih...'),
    ),
    DropdownMenuItem(
        value:0,
        child: Text('satu'),
    ),
    ],
);
```
#### Button
- bersifat seperti tombol
- dapat melakukan sesuatu saat ditekan

##### ElevatedButton
- tombol yang timbul
- jika ditekan, akan menjalankan onPressesd
```
ElevatedButton(
    child: const Text('submit'),
    onPressed:(){
        
    },
    );
```
##### IconButton
- tombol yang hanya menampilkan icon
- jika ditekan, akan menjalankan onPressesd
```
IconButton(
    icon: const Icon(Icons.add),
    onPressed:(){
        
    },
    );
```
