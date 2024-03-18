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

## ssh-agent for github
# Start SSH Agent
#----------------------------
# Set up ssh-agent
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initializing new SSH agent..."
    touch $SSH_ENV
    chmod 600 "${SSH_ENV}"
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' >| "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add ~/.ssh/github-gitlabpnap-nopass
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    kill -0 $SSH_AGENT_PID 2>/dev/null || {
        start_agent
    }
else
    start_agent
fi

#####################################
###### private osmedeus url #########
#osmlink(){
#	echo "bash <(curl -fsSL https://0xjson-bucket.s3.ap-southeast-1.amazonaws.com/4d2464e2a253567143e0a1b8e7fd8200/premium.sh)"
#}
####################################
#
#export PATH=$PATH:"/root/osmedeus-base/binaries"
#source $HOME/osmedeus-base/token/osm-default.rc
#source $HOME/osmedeus-base/token/storages-alias.rc
#source $HOME/osmedeus-base/secret/secret.rc
#source /etc/bash_completion.d/osmedeus
#source $GOPATH/pkg/mod/github.com/tomnomnom/gf@v0.0.0-20200618134122-dcd4c361f9f5/gf-completion.bash
## user op is: vG6kZNJgUsXLoY1JV68JhveMtUJJWwPgRZDb606WER8z2xmcHyVp2dqziMSlxNPQ8HV8c8jRVXVCZPHNF4lmbGvz0fi5F6fC843zTavIS64uxXLoPPmD6g4HAi
