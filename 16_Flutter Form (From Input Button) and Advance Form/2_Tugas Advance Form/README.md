# Advance Form Input

#### iteractive widget
- iteraksi antara aplikasi dan user
- mengumpulken input dan feedback dari user

#### Date Picker

##### Deskripsi 
- Widget dimana user bisa memasukan tanggal
- tanggam kelahiran, waktu pemesanan tiket, waktu reservasi restoran,jadwal meeting, dll.

##### Cara membuat date picker
- menggunakan fungsi bawaan flutter showDatePicker
- fungsi showDatepicker memiliki tipe data future
- menampilkan dialog material design picker

##### cara membuat date picker
- menambahkan packages intl di pubspec.yaml
- mempersiapkan variabel
- menambahkan fungsi showDatePicker di dalam onPressed
- Memanggil fungsi setState di dalam onPressed

#### Color Picker
- widget dimana user bisa memilih color 
- penggunaan color picker digunakan untuk berbagai macam kondisi

##### cara membuat color picker
- menggunakan packages flutter_collorpicker
- menambahkan packages flutter_collorpicker di pubspec.yaml
- mempersiapkan variabel
- menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog

#### File Picker
- kemampuan widget untuk mengakses storage
- memilih dan membuka file

##### cara membuat color picker
- menggunakan packages file_picker dan open_file 
- menambahkan packages file_picker dan open_file di pubspec.yaml
- import packages file_picker dan open_file dalam file dart
- membuat fungsi untuk mengexplore dan memilih file dari storage
- menambahkan fungsi showDialog di dalam onPressed 
- membuat fungsi untuk membuka file yang telah dipilih
- mengambil file dari object result dan memanggil fungsi open_file di dalam Fungsi _pickFile

