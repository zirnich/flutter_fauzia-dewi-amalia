# Introduction Flutter and Flutter Widget

### Apa Itu Flutter
alat pengembangan antar muka pengguna yang digunakan untuk membuat aplikasi mobile,desktop, dan web.
#### Keunggulan FLutter
- mudah digunakan dan dipelajari
- productivitas tinggi
- dokumentasi lengkap
- komunitas yang berkembang

#### Bagian dari FLutter
##### SDK(Software Development Kit)
alat-alat untuk membantu proses pengembangan aplikasi
##### Framework
perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi

##### Membuat Project
dilakukan dengan menjalankan printah:
```
flutter create <nama_project>
```
##### Menjalankan Project 
- masuk ke direktori project
- jalankan printah 
```
flutter run
```

### widget
##### Deskripsi
- digunakan untuk membentuk antarmuka(UI)
- berupa class
- dapat terdiri dari beberapa widget lainnya

##### jenis
- Stateless 
- stateful

#### Stateless widget
##### Deskripsi
- tidak bergantung pada perubahan data
- hanya fokus pada tampilan
- dibuat dengan extends pada class statelesswidget

```
class MyWidget extends StatelessWidget{
    const MyWidget({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context){
        return const MaterialApp(
            home: Scaffold(
                body: Text('Selamat datang di Flutter .'),
            ),
        );
    }
}

```
#### Stateful widget
##### Deskripsi
- mementingkan pada perubahan data
- dibuat dengan extends pada class StatefulWidget
- 1 widget menggunakan 2 class (widget dan state)

1
```
class MyWidget extends StatefulWidget{
    const MyWidget({Key? key}) : super(key: key);
    
    @override
    createState() => MywidgetState();
}

```
2
```
class MyWidgetState extends Stat<MyWidget>{
@override
    Widget build(BuildContext context){
        return const MaterialApp(
            home: Scaffold(
                body: Text('Selamat datang di Flutter .'),
            ),
        );
    }
}
```

#### Built in Widget
- widget yang dapat langsung digunakan
- sudah ter-install bersama Flutter

##### MaterialApp
membangun aplikasi dengan desain material
```
const MateriApp(
    home: Text('Selamat datang di flutter.'),
    );
```
##### Scaffold
membentuk sebuah halaman
```
const Scaffold(
    body: Text('Selamat datang di flutter.'),
    );
```
##### AppBar
membentuk application bar yang terletak pada bagian atas halaman
```
Appbar(
    title: const Text('Home'),
    );
```
##### Text
menampilkan teks
```
const Text(teks);
const Text('hallo...');
```
