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

# Jalankan
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
echo -e " 🦊 "
# Atau
echo -e " > "
# Ataupun
echo -e " anon@vict "
```
**tergantung kalian!**
