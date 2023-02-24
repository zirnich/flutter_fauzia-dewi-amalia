# Branching-Looping-Function

### Pengambilan keputusan
menentukan alur program pada kondisi tertentu

#### IF
- Memerlukan nilai bool 
- Menjalankan bagian Proses jika nilai bool bernilai True

```
if(nilai_bool){
    //diproses jika nilai bool true
}

```
contoh 
jika usia kurang dari 20 maka **remaja** akan di tampilkan
```
void main(){
    var usia = 18;
    if(usia < 20 ){
        print ('remaja');
    }
}
```
#### IF-ELSE
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false

```
if(nilai_bool){
    //proses jika nilai bool true
}else{
    //proses jika nilai bool false
}

```
contoh 
jika usia kurang dari 20 maka **remaja** akan di tampilkan,jika lebih maka
akan di tampilkan **tidak memiliki golongan**
```
void main(){
    var usia = 18;
    if(usia < 20 ){
        print ('remaja');
    }else{
        print('tidak memiliki golongan');
    }
}
```
#### Sisipan ELSE-IF
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false
- Menambah nilai pengujian bool lain

```
if(nilai_bool){
    //proses jika nilai bool true
}else if{
    //proses jika nilai bool adalah false
    //dan nilai bool adalah true
}

```
contoh 
jika usia kurang dari 20 maka **remaja** akan di tampilkan,jika kurang dari 40 maka **Dewasa** akan di tampilkan,jika tidak memenuhi 2 tersebut maka
akan di tampilkan **tidak memiliki golongan**
```
void main(){
    var usia = 18;
    if(usia < 20 ){
        print ('remaja');
    }else if(usia <40 ){
         print ('Dewasa');
    }else{
        print('tidak memiliki golongan');
    }
}
```

### Perulangan
Menjalankan proses berulang kali

#### For
- Diketahui beberapa kalai perulangan terjadi
- memerlukan nilai awal
- memerlukan nilai bool,jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

```
for(nilai_awal; nilai_bool; pengubah_nilai_awal){
    
}

```
contoh 
```
void main(){
    for(var i = 0; i < 10; i += 1){
        print(i);
    }
}
```
#### While
- tidak Diketahui beberapa kalai perulangan terjadi
- memerlukan nilai bool,jika true maka perulangan dilanjutkan

```
while(nilai_bool){
    
}

```
contoh 
```
void main(){
    var i = 0;
    while(i<10){
        print(i);
        i++;
    }
}
```
#### Do-While
- mengubah bentuk while
- proses dijalankan minimum sekali,akan diteruskan jika nilai bool adalah true

```
do{
while(nilai_bool);
    
}

```
contoh 
```
void main(){
    var i = 0;
    do{
        print(i);
        i++;
    }while(i<10);
}
```

### Break dan Continue
cara lain menghentikan perulangan
- perulangan mengunakan nilai bool untuk lanjut atau berhenti
- Break dan Continue dapat menghentikan perulangan dengan mengabaikan nilai bool 
- Continue dapat menghentikan satu kali proses

#### Perbedaan
- Break : menghentikan seluruh proses perulangan
- Continue : menghentikan satu kali proses perulangan

#### Break
```
void main(){
    for(var i = 0; true; i++){
    if(i == 10) {
        break;
    }
        print(i);
    }
}
```
#### Continue
```
void main(){
    for(var i = 0; i < 10; i+= 1){
    if(i == 5) {
        continue;
    }
        print(i);
    }
}
```

### Fungsi
kumpulan kode yang dapat digunakan ulang
- kumpulan perintah
- dapat digunakan berkali-kali
- cukup mengubah fungsi sekali, pengunaan lainnya akan ikut berubah

#### Membuat Fungsi
*tipe_data nama_fungsi(){
    //perintah yang dijalankan saat fungsi dipanggil
}*
```
void hallo(){
     print('hallo');
}
```
#### Memanggil Fungsi
nama_fungsi();
```
void main(){
     hallo();
}
```
#### Fungsi dengan Parameter
mengirim data saat menjalankan fungsi
*tipe_data nama_fungsi(tipe_data nama_parameter){
    //perintah yang dijalankan saat fungsi dipanggil
}*
```
void tampil(String teks){
    print(teks);
}
void main(){
    tampil('hallo');
}
```
#### Fungsi dengan Return
Memberi nilai pada fungsi saat dipanggil
*tipe_data nama_fungsi(tipe_data nama_parameter){
    //perintah yang dijalankan saat fungsi dipanggil
    return nilai;
}*
```
int jumlah(int a, int b){
    return a+b;
}
void main(){
    var hasil = jumlah(1,2);
    print(hasil);
}
```