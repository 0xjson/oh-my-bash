#!/bin/sh

alias cd="z"
alias ls="exa"
alias :q="exit"
alias vi="nvim"
alias bashconfig="vi ~/.bashrc"
alias bashsource="source ~/.bashrc"
alias bashaliases="vi ~/.oh-my-bash/aliases/0xjson.aliases.sh"
#alias yinstall="yay -S"
#alias yuninstall="yay -R"
#alias ycleancache="yay -Yc"
#alias ysearch="yay -Ss"
#alias yinfo="yay -Qi"
#alias yupdate="yay -Syu"
alias bashexport="vi ~/.oh-my-bash/plugins/exports/exports.plugin.sh"
alias chaos="chaos -key $PDCP_API_KEY"
alias nc="ncat"
alias msfc="msfconsole.sh"
alias burpforward="ssh -D 9090 -q -C -N recon -vv"
alias reversetunnel-recon="ssh -R 8080:localhost:8080 buntu"
alias burptunnel="socat TCP4-LISTEN:8080,fork,reuseaddr TCP4:172.20.160.1:8080 &"
alias burpkill="kill $(ps aux | grep -v grep | grep socat | head -n 2  |awk -F' ' {'print $2'})"


crtsh(){
  domain="$1"
  curl -s https://crt.sh/\?q\=\%25.${domain}\&output\=json \
    | jq -r '.[].name_value' \
    | sed 's/\\*\\.//g' \
    | sort -u
}
