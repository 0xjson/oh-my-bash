#!/bin/sh
#################################################
#################################################
#
# echo "this is my osmedeus build" | md5sum
# this is my s3 bucket md5 self-encrypted folder
#
#################################################
## export variable
export osm_url="https://osm.aquilonix.xyz/"
export osm_wsurl="https://osm.aquilonix.xyz/not-a-list-of-targets.txt"
export EDITOR="/usr/bin/nvim"
export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
#export LC_ALL="en_US.UTF-8"

## export XDG
#export XDG_RUNTIME_DIR="/run/user/1000"

## export timezone"
export TZ="/usr/share/zoneinfo/Asia/Singapore"

# fcitx
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export SDL_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"

# export tty for gpg
export GPG_TTY=$(tty)

### rust export
export PATH="$PATH:$HOME/.cargo/bin"

### golang export
#GOPATH="/root/go"
#GOROOT="/usr/local/go"
#export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
#export GO111MODULE="on"
