# Flutter Platform Widget

### Abstract
Memanfaatkan widget dengan gaya berbeda pada Android dan IOS

#### MaterialApp
- widget dasar yang mengemas seluruh widget dalam aplikasi
- widget yang digunakan pada sistem Android
- di-import dari package:flutter/material.dart

##### Struktur
widget yang pertama kali dibuka, diletakan pada bagian home.
```
MaterialApp(
theme: ThemeData.dark(),
home: const HomePage(),
);
```
#### Scaffold
widget dasar untuk membangun sebuah halaman pada MaterialApp
##### Struktur
membentuk tataletak dasar sebuah halaman yang ditulis melalui properti-properti
```
Scaffold(
appBar: AppBar(),
drawer: Drawer(),
body:...,
bottomNavigationBar: bottomNavigationBar(....),
);
```
#### CUpertinoApp
- widget dasar yang mengemas seluruh widget dalam aplikasi
- widget yang digunakan pada sistem IOS
- di-import dari package:flutter/cupertio.dart

##### Struktur
- variabel _themeDark dibuat untuk menyimpan tema
- DIperlukan karna CUpertino tidak menyediakan ThemeData.Dark()seperti pada material
```
final _themeDark = const CupertinoThemeData.raw(
  Brightness.dark,
  null,
  null,
  null,
  null,
  null,
);
```

##### Struktur
widget yang pertama kali dibuka, diletakan pada bagian home
```
CupertinoApp(
    theme: _themeDark,
    home: const HomePage(),
);
```
#### CupertinoPageScaffold
widget dasar untuk membangun sebuah halaman pada CupertinoApp

##### struktur
membentuk tata dasar Sebuah halaman yang ditulis melalui properti-properti
```
CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(),
    child:..,
    );
```
