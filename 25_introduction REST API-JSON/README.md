# REST API

#### Rest Api
Respresentational State Transfer
Application Programming Interface

##### Deskripsi
- arsitektural yang memisahkan tampilan dengan proses bisnis
- bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

#### HTTP
Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.
###### Pola Komunikasi 
- CLient mengirim request
- server mengelola dan membalas dengan memberi response

###### Struktur Request
- URL
- Method(GET,POST,PUT,DELETE)
- Header
- body

###### Struktur Rsponse
- Status Code
- Header
- body

#### Dio
- sebagai HTTP CLient
- dimanfaatkan untuk melakukan Rest API

##### penggunaan
Mengambil data menggunakan Dio dan menampilkan hasil pada console
```
Dio()
 .get(
 "http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts"
  )
    .then((response){
    print(response);
  });
```

#### Serialisasi JSON
- cara penulisan data
- Javascript Object Notation
- umum digunakan pada REST API

##### Serialisasi JSON 
mengubah struktur data ke bentuk JSON

map/list ------>Serialisasi------>JSON

##### Deserialisasi JSON 
mengubah struktur JSON ke struktur data

JSON------>Serialisasi------>map/list

