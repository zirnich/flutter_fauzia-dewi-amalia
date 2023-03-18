# Flutter CLI

### flutter CLI
- alat yang digunakan untuk berinteraksi dengan flutter SDK
- perintah dijalankan dalam terminal

#### Important CLI Commands
- Flutter Doctor
- Flutter Create
- Flutter Run
- Flutter Emulator
- Flutter Channel
- Flutter Pub
- Flutter Build
- Flutter Clean

##### Flutter Doctor
perintah untuk menampilkan informasi software yang dibutuhkan flutter
```
flutter doctor
```
##### Flutter Create
perintah untuk membuat project aplikasi flutter baru di directory
```
flutter create <app_name>
```
##### Flutter Run
printah untuk menjalankan project aplikasi di device yang tersedia
```
flutter run <dart_file>
```
##### Flutter Emulator
printah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru
```
flutter emulators
flutter emulators --launch<emulator_id>
flutter emulators --create[--name xyz]
```
##### Flutter Channel
printah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini
```
flutter channel
```
##### Flutter pub
- flutter pub add, untuk menambahakan packages ke dependencies yang ada di pubspec.yaml
```
flutter pub add <package_name>
```
- flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
```
flutter pub get
```
##### Flutter Build
printah untuk memprooduksi sebuah file aplikasi untuk keperluan deploy atau publish ke appstore,playstore,dll.
```
flutter build <diretory>
```
##### Flutter clean
printah untuk menghapus folder build serta file lainnya yang dihasilkan saat menjalankan aplikasi di emulator,perintah ini akan memperkecil ukuran project tersebut.
```
flutter clean
```
### Packages Management
- flutter mendukung sharing packages
- packages dibuat developers lain
- mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- menadapatkan packages di website pub.dev

##### Cara Menambahkan Packages
- cari  package di pub.dev
- copy baris dependencies yang ada di bagian installing
- buka pubspec.yaml
- paste barisnya dibawah dependencies pubspec.yaml
- run flutter pub get di terminal
- import package di file dart agar bisa digunakan
- stop atau restart aplikasi jika dibutuhkan

