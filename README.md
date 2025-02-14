# SF-V2
![Platform](https://img.shields.io/badge/platform-Termux-red)
![Status](https://img.shields.io/badge/status-active-brightgreen)
![Lisensi](https://img.shields.io/badge/license-MIT-blue)

**Sebuah program modified tampilan shell khas Termux untuk memudahkan & mempercepat tugas di terminal dengan bantuan package Fish 🐟**
<details>
  <summary>💡 Sumber :</summary>
<br>
  
 - *Di kode oleh **x7cyber** (@cyberm_)*  
 - *Disederhanakan oleh **(@anonvict)***
</details>


## ⚙️ Instalasi SF-V2
ikuti langkah berikut untuk instalasi

```bash
# Clone repo ini
git clone https://github.com/anonvict/SF-V2

# Masuk ke Direktori
cd SF-V2

# Install fish
apt install fish -y

# Test
fish

# exit untuk keluar 
exit

# Jalankan script!
bash run.sh
```
<br>

**script ini di program dengan bahasa bash/sh agar lebih ringan & mudah daripada sebelumnya yang versi `Style_Fish`**

## 📝 Konfigurasi
letak config fish utama dari sc ini ada di :
```bash
nano ~/.config/fish/config.fish
```
dan letak tema, color, cursor dll ada di :
```bash
cd ~/.termux/
```
pengaturan default :
```bash
nano .bashrc
```
**Masing-masing memiliki fungsi untuk mengatur & menjalankan program setiap kali termux di buka.**

## 🛠️ Modified
untuk mengubah icon atau tanda di awal command, kamu pergi ke config.fish :
```bash
nano ~/.config/fish/config.fish
```
Disana ada tanda pagar '#' Baca dan pahami pengubahan nya. bisa kamu ganti dengan emoji, atau tanda khusus.
```bash
# Bisa menjadi
echo -e " 🦊 "
# Atau
echo -e " > "
# Ataupun
echo -e " anon@vict "
```
**Semua ikon tergantung kesukaan kamu!**

## 🎨 Tema
konfigurasi tema berada di :
```bash
# Masuk direktori
cd ~/.termux/

# list
ls
```
**untuk warna background yaitu kecoklatan, dan kursor berwarna putih dengan blink atau kedip setiap 600ms, semua itu dapat kamu ubah di tempat masing-masing.**

```bash
# Masih di direktori
cd ~/.termux/

# untuk warna background & cursor
nano colors.properties

# untuk penambahan key & speed kursor
nano termux.properties
```
**Jika kamu ingin merubah warna background, dengan bantuan plugin termux atau `Termux-Style` kamu bisa download dari Fdroid 📥**

**Atau bisa kamu kunjungi github dari `x7cyber` dan cari repo `Style_Fish` kemudian scroll kebawah hingga kalian menemukan unduhan apk Termux-style dalam bentuk Mediafire 🚀**
```bash
https://github.com/x7cyber/Style_Fish
```
**Ikuti petunjuk cara menggunakannya disana, tenang saja, dia menjelaskan dalam bentuk gambar, maka nya mudah dipahami. (ubah/pilih style sesuai keinginan setelah menginstal apk Termux-styling**

## 🔺Hapus Konfigurasi
sayang sekali jika kamu merasa bosan dengan tampilannya, ikuti perintah di bawah ini untuk mencopot secara manual!
```bash
# pergi ke direktori utama
nano .bashrc

nonaktifkan semua command termasuk :
`exec fish`
```
**sudah! simpel ✌️ jika ingin mengembalikan semula, tinggal tambahkan kata `exec fish` di file `.bashrc`**
#
## 🧐 SF-V3
**Yah, kemungkinan akan ada dengan fitur yang lebih menarik & lengkap**

**Terimakasih telah membaca dokumentasi ini, jika kurang lengkap saya mohon maaf 🐟 karena yang lengkap hanya ada di repo sebelumnya `x7cyber/Style_Fish`**

