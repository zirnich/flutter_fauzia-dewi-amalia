# Basic Version and Branch Management (Git)

Versioning? mengatur versi dari source code program

## Git
Salah satu VSC yang digunakan developer untuk mengembangkan software secara Bersama.
## Github
GitHub adalah layanan hos web bersama untuk proyek pengembangan perangkat lunak yang menggunakan sistem kendali versi Git dan layanan hosting internet. 
## GIT download dan Install
Download git di website resmi [Git](https://git-scm.com/downloads) setelah itu install . Untuk mencobanya dan melihat versi buka cmd atau poweshell ketik perintah 
```sh
Git  --version
```
**konfiguran awal**
```sh
git config --global user.name "FDA"
git config --global user.email contoh@FDA.com
```
**membuat repositori**
```sh
git init
```
**remote repositori github**
```sh
git remote add (remote name) (url remote repositori)
```
**membuat revisi**
```sh
git add (file yang di revisi)
git add *.html 
git add .
```
**git status**
untuk melihat status repository
```sh
git status
```
**commit**
untuk perubahan di simpan oleh git
```sh
git commit -m "commit"
```
**git push** 
untuk menyimpan revisi ke repositori remote
```sh
git push (remote name) (cabang tujuan)
```
**git diff**
melihat perbedaan perubahan di revisi.
```sh
git diff
```

## Mengambil revisi dari remote
Git Fetch & Pull
-  Fetch akan mengambil revisi saja dan tidak langsung melakukan merge terhadap repository lokal.
- Pull mengambil revisi dan langsung melakukan merge terhadap repository lokal.
 ```sh
git fetch
git pull
```
## Branching
- branch :untuk membuat cabang baru
- merge : untuk mengambungkan cabang
```sh
git branch (new branch)
git merge (nama branch yang akan di gabung)
```
