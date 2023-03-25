# Flutter Layout

### apa itu Layout
- untuk mengatur tata letak
- Layout berbentuk widget yang mengatur widget di dalamnya

#### Single-child Layout
##### Container
- membuat sebuah box
- membungkus widget lain
- box memiliki margin,padding, dan border
```
Container(
    child: text(teks)
    );
```
##### Center
- membuat sebuah box
- membungkus widget lain
- memenuhi lebar dan tinggi ruang di luarnya
- meletakan widget berada dibagian tengah
```
Center(
    child: text(teks)
    );
```
##### SizedBox
- membuat sebuah box
- membungkus widget lain
- box dapat diatur lebar dan tingginya
- lebih sederhana dari container
```
SizeBox(
    width: 100,
    height: 150,
    child: text(teks),
    );
```
#### Multi-Child Layout
##### Column
mengatur widgets secara vertikal
```
Column(
children: const [
    text(teks),
    },
);
```
##### Row
mengatur widgets secara horizontal
```
Row(
children: const [
    text(teks),
    ],
);
```
##### ListView
- mengatur widgets dalam bentuk list
- memiliki kemampuan scroll
```
ListView(
children: [
    Container(
    ),
);
```
##### GridView
mengatur widgets dalam bentuk galeri
```
GridView.count(
    CrossAxisCount: angka,
    children: [],
    );
```
