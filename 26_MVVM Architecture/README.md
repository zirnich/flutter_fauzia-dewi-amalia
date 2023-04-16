# MVVM Architecture

MVVM -----> Model-View ViewModel
memisahkan logic dengan tampilan(View) ke dalam ViewModel

##### Keuntungan 1
- Reusability

jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa mengunakan ViewModel yang sama

##### Keuntungan 2
- Maintainability

Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic

##### Keuntungan 3
- Testability

pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan productivitas pada pengujian

#### Melakukan MVVM

##### Struktur Direktori 
- model memiliki 2 bagian,yaitu bentuk data yang akan digunakan dan submer dari data tersebut
- tiap screen diletakan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

##### Model
- bentuk data yang akan digunakan, dibuat dalam bentuk class
- data-data yang dimuat, diletakan pada property

##### ViewModel
- menyimpan data-data dan logic yang diperlukan halaman COntacSreen
- jika widget lain memerlukan logic yang sama,dapat mengunakan ViewModel ini juga

##### View
mengunakan StatefulWidget
