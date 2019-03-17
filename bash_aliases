# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gcl='git clone'
alias gd='git diff'
alias gi='git init'
alias gs='git status -s'

function gc() {
	local IFS=' '
	if ! [ -z "$*" ]; then
		git add . && git commit -m \"$*\"
	else
		echo "gc please enter commit message";
	fi
}
