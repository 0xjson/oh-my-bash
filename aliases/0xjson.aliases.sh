#!/bin/sh

#alias ls="exa"
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
alias chaos="chaos -key $token"
alias nc="ncat"
alias msfc="msfconsole.sh"
alias burpforward="ssh -D 9090 -q -C -N recon -vv"
alias reversetunnel-recon="ssh -R 8080:localhost:8080 recon"
alias burptunnel="socat TCP4-LISTEN:8080,fork,reuseaddr TCP4:172.20.160.1:8080 &"
alias burpkill="kill $(ps aux | grep -v grep | grep socat | head -n 2  |awk -F' ' {'print $2'})"
alias python="python3.11"
#alias pip="pip3.11"

#### proxy
#alias proxyon="export http_proxy='http://lum-auth-token:XkyJMuhXtnLcbKEhdV2z4dgm8Y2KTdjC@188.166.215.11:24000';export https_proxy='https://lum-auth-token:XkyJMuhXtnLcbKEhdV2z4dgm8Y2KTdjC@188.166.215.11:24000'"
#alias proxyoff="unset http_proxy;unset https_proxy"
#
#alias burpsuite="java -javaagent:/mnt/c/tools/burp/BurpSuiteLoader_v2022.8.jar -Xmx16384m --illegal-access=permit -noverify -Dfile.encoding=utf-8 -Djava.net.preferIPv4Stack=true -jar /mnt/c/tools/burp/burpsuite_pro_v2022.8.3.jar"
#alias burp="java -javaagent:/mnt/c/tools/burp/BurpSuiteLoader_v2022.8.jar -Xmx16384m --illegal-access=permit -noverify -Djava.net.preferIPv4Stack=true -jar /mnt/c/tools/burp/burpsuite_pro_v2022.8.3.jar"

fireprox(){
	access_key=$ACCESS_KEY
	secret_access_key=$SECRET_ACCESS_KEY
	if [ "act" == $1 ];
	then
		cd ~/tools/fireprox
		source bin/activate
	fi

	if [ "deact" == $1 ];
	then
		deactivate
	fi

	if [ "list" == $1 ];
	then
		cd ~/tools/fireprox
		python fire.py --access_key $access_key --secret_access_key $secret_access_key --command list --region ap-southeast-1
	fi

	if [ "create" == $1 ];
	then
		cd ~/tools/fireprox
		python fire.py --access_key $access_key --secret_access_key $secret_access_key --command create --region ap-southeast-1 --url $2
	fi
}
