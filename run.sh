#!/data/data/com.termux/files/home/../usr/bin/bash
# SF-V2 🐟 || anonvict || cyberm_
# give me star in the repo ★

clear

echo -e "🧐 Mengecek dependensi yang diperlukan...\n"
sleep 1

cek_dan_install() {
    if ! command -v "$1" &> /dev/null; then
        echo "📦 Paket '$1' belum terinstall, menginstall sekarang..."
        apt install -y "$1"
    else
        echo -e "\033[36m✓\033[0m Paket '$1' sudah terinstall."
    fi
}

# entahlah, siapa tau grep belum ada.
cek_dan_install grep
cek_dan_install figlet
cek_dan_install lsd

FILE_CONFIGNYA="$HOME/.config/fish/config.fish"

BASHRC="$HOME/.bashrc"

FOLDER_TERMUX="$HOME/.termux"

if [ ! -d "$HOME/.config/fish" ]; then
    mkdir -p "$HOME/.config/fish"
    echo -e "\033[36m✓\033[0m Direktori konfigurasi Fish berhasil dibuat!"
fi

if [ ! -f "$FILE_CONFIGNYA" ]; then
    touch "$FILE_CONFIGNYA"
    echo "📄 File config.fish berhasil dibuat!"
fi

cat > "$FILE_CONFIGNYA" <<EOF
if status is-interactive

set -U fish_greeting

end

function fish_prompt_file
    set -l last_status \$status
    set_color -o blue --bold
    echo ""

    # color ada white, blue, yellow, red, purple, brblack, cyan, green
    set_color -o green --bold
    echo -n (prompt_pwd)

    # color ada white, blue, yellow, red, purple, brblack, cyan, green
    set_color -o white --bold
    # Nah ini nih, tanda '' bisa kalian ubah.
    echo -n " 📨 "

    # atau bisa make ini nih, tinggal hilangin tanda pagar # di depan nya!
#    echo -n " 🦁 "
#    echo -n "  "
#    echo -n " > "
#    echo -n "  "
#    echo -n "  "
#    echo -n "  "
#    echo -n "  "


    set_color normal
end

if status is-interactive
    function fish_prompt
        fish_prompt_file
    end
    set -U fish_greeting
end

alias ls='lsd -t'
# Ini untuk validasi ya, kalau mau hapus sesuatu biar ada konfirmasi gitu (y/n)
alias rm='rm -v -i'
EOF

echo -e "\033[36m✓\033[0m Konfigurasi SF-V2 berhasil diperbarui!"


if [ ! -f "$BASHRC" ]; then
    touch "$BASHRC"
    echo "📄 File .bashrc dibuat!"
fi

cp "$BASHRC" "$BASHRC.bak"

sed -i 's/^/#/g' "$BASHRC"

if ! grep -Fxq "clear" "$BASHRC"; then
    echo "clear" >> "$BASHRC"
fi

if ! grep -Fxq "echo -e ' \e[1;31m● \e[1;33m● \e[1;32m● \e[0m'" "$BASHRC"; then
    echo "echo -e ' \e[1;31m● \e[1;33m● \e[1;32m● \e[0m'" >> "$BASHRC"
fi

echo ""
echo -ne "📝 Masukkan nama untuk tampilan figlet: "
read NAMA_PENGGUNA

if ! grep -Fxq "figlet -f slant \"$NAMA_PENGGUNA\" && echo && date" "$BASHRC"; then
    echo "figlet -f slant \"$NAMA_PENGGUNA\" && echo && date" >> "$BASHRC"
fi

if ! grep -Fxq "exec fish" "$BASHRC"; then
    echo "exec fish" >> "$BASHRC"
fi


echo -e "\033[36m✓\033[0m Berhasil diperbarui dan SF-V2 diatur sebagai tema default!"
echo -e "\033[36m✓\033[0m Tinggal buka NEW SESSION"
echo -e "\n 🎨 Mengatur tema Termux..."
if [ ! -d "$FOLDER_TERMUX" ]; then
    mkdir -p "$FOLDER_TERMUX"
    echo -e "\033[36m✓\033[0m Direktori Termux ~/.termux berhasil dibuat!"
fi

cp tema/colors.properties tema/termux.properties tema/font.ttf "$FOLDER_TERMUX"

echo -e "\033[36m✓\033[0m Tema Termux berhasil diterapkan!\n\nJika mau otak-atik, bisa lihat di dokumentasi:\n› \033[4mhttps://github.com/anonvict/SF-V2\033[0m\n\noh iya, jika tidak suka dengan tampilan figlet, kamu bisa ubah! pergi ke:\n› nano .bashrc\nkemudian kalian hapus semua command kecuali kata:\n› exec fish"
