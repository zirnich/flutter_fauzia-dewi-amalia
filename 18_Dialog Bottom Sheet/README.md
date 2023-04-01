# Dialog & Bottom Sheet

#### AlertDialog
##### Deskripsi 
- untuk tampilan android, dari material design
- menginformasikan pengunna tentang situasi tertentu
- bisa digunakan untuk mendapatkan input dari user
- membutuhkan helper method showDialog
```
showDialog(
..........
AlertDialog(
.............
TextButton(
onPressed: (){
..................
}
)
)
)
```

#### Bottom Sheet
- seperti dialog tetapi muncul dari bawah layar
- mengunakan fungsi bawaan flutter showModalBottomSheet
- membutuhkan dua properti, yaitu context dan builder

```
showModalBottomSheet(
...........
),
context : context,
builder: (context) => ............,
```



