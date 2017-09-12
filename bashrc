PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "

trap 'printf "\e[0m" "$_"' DEBUG

source /usr/share/git/completion/git-prompt.sh

# Colorize prompts
for i in {1..4}; do
	PSi="PS$i"
	export $PSi="\[\e[1;37m\]${!PSi}\[\e[0m\]"
done
unset PSi
unset i

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
