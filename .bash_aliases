#
# ~/.bash_aliases
#

#ls stuff
alias l='ls --color=no'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ll -a'

#absolution ^_^
alias f='clear && history -c'
alias ff='exit'

#firefox
alias firefox='firefox -no-remote'

#kvm
alias kvm='qemu-system-x86_64 -enable-kvm'
alias qemu='qemu-system-x86_64'

#aria2c - direct download
alias aria2ch='aria2c --max-connection-per-server=4 --min-split-size=1M'
#aria2c - bittorrent: force encryption. use the seedbox for seeding.
alias aria2ct='aria2c --bt-force-encryption=true -u20 --seed-time=0'

#mpv anime
alias mpva='mpv --profile=anime-jp'

#youtube-dl no file ids
alias youtube-dl="youtube-dl -o '%(title)s.%(ext)s'"

#lynx
alias lynx="lynx --accept-all-cookies"

#udisks
alias m="udisks --mount"
alias um="udisks --unmount"

#rsync
alias rs="rsync -rv --progress "

#c
alias cr="c -r" # compile and run
alias g="gdb"
alias an="nasm -f elf32"
alias al="ld -m elf_i386"
alias massif="valgrind --tool=massif"
