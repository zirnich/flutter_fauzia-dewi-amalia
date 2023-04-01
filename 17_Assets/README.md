# Assets

#### Assets
##### Deskripsi 
- file yang di bundled dan di deployed bersamaan dengan aplikasi
- tipe-tipe assets: JSON,icons,image,dan font file

#### image
- flutter mendukung format gambar : JPEG, WebP, GIF, Animated Web/GIF,PNG,BMP, dan WBMP
- dan bisa menampilkan gambar dari project asset dari internet
```
Image(image: AssetImage('.........')),
Image.asset('.........'),
Image.network('https:.........')
```

#### Font
- pengunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
- penentuan font yang mau dipakai biasanya oleh UI desainer
- penerapan font menggunakan custom font atau dari package

##### step mengunakan font
- cari dan downloal font
- import file .ttf
- daftarkan font di pubspec.yaml
- mengatur font
```
(fontFamily : 'Rowdies'),
```



