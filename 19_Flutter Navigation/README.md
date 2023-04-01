# Flutter Navigation

#### Apa itu navigation
berpindah dari halaman sati ke halaman lain

##### Navigation Dasar
- perpindahan halaman menggunakan => Navigator.push() 
- kembali kehalaman sebelumnya menggunakan => Navigator.pop()

###### Mengirim Data ke Halaman Baru
menggunakan parameter pada constructor halaman
```
MaterialPageRoute(
builder: (_) => const AboutScreen(parameter: 'hore'),
)
```
halaman baru
```
final String parameter;
const AboutScreen({Key? key, required this.parameter})...........
```

#### Navigation dengan Named Routes
- tiap halaman memiliki alamat yang disebut route
- perpindahan halaman menggunakan => Navigator.pushNamed() 
- kembali kehalaman sebelumnya menggunakan => Navigator.pop()
```
(fontFamily : 'Rowdies'),
```
##### mendaftarkan Route
- tambahkan initialRoute pada MaterialApp
- tiap route adalah fungsi yang membentuk halaman
```
MaterialApp(
initialRoute: '/',
      routes: {
        '/': (_) => const MyHomePage(),
        '/newpage' : (_)=> const newPage(),
      },
);	  
```
perpindahan halaman
```
Navigator.of(context).pushNames('/newpage');
```
##### mengirim data ke halaman baru
menggunakan argumen saat melakukan pushNamed
```
Navigator.of(context).pushNames(
'/newpage',
arguments: 'Hore',
);
```
halaman baru
```
final parameter = ModalRoute.of(context)!.settings,arguments as String;
return......,
```




