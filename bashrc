PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\] '

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

trap 'printf "\e[0m" "$_"' DEBUG

source /usr/share/git/completion/git-prompt.sh

# Colorize prompts
for i in {1..4}; do
	PSi="PS$i"
	export $PSi="\[\e[1;37m\]${!PSi}\[\e[0m\]"
done
unset PSi
unset i

