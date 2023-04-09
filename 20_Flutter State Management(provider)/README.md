# provider 

#### step 1
- menambahkan package provider di dependencies

yang perlu di perhatija dalam pengunaan provider, yaitu:
- package provider
- ChangeNotifierProvider
- MultiProvider
- Consumer

##### ChangeNotifier
- class yang menambah dan menghapus listeners
- digunakan dengan cara meng-extends
- memangil notifyListerner(),untuk memberitahu widget yang mengunakan state bahwa terjadi perubahan data sehinga UI harus di bangun ulang

#### step 2 membuat provider manager
- membuat file dart baru 
- untuk menampung variabel yang menyimpan data state

#### step 3 membuat method
- membuat method complete() didalam class, yang di gunakan untuk menambah data baru ke dalam variabel

###### ChangeNotifierProvider
- widget yang membungkus sebuah class
- mengimplementasikan ChangeNotifier dan mengunakan child untuk widget uinya
- mengunakan create, provider yang akan menyimpan model yang telah di buat

###### Multi Provider
- jika membutuhkan lebih dari satu provider

##### step 4 menambahkan ChangeNotifierProvider
membungkus MaterialApp dengan ChangeNotiferProvider
##### consumer
- widget yang mengengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
- membangun ulang widget yang dibungkus Consumer Saja
- penting untuk meletakan consumer pada lingkup sekecil mungkin
- membutuhkan properti builder yang berisi context, model, dan child

#### step 5 menambahkan consumer
- bungkus widget dengan consumer

#### step 6 menambahkan consumer
- buat variabel baru yang menampung data dari provider



