# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'

alias gs='git status -s'
alias gst='git status'
alias gpl='git pull'
alias gps='git push'
alias gmt='git mergetool'
alias gdt='git difftool'
# alias cdc='cd C:/code'
alias rbm='rbt createAgainstMaster'
alias rbu='rbt update'
alias gba='git branch -a'
alias gbr='git branch -r'
alias ga='git add .'

function cdc() { cd C:/code/"$@"; }
function gm() { git merge --no-ff "$@"; }
function gco() { git checkout "$@"; }
function gcp() { git cherry-pick "$@"; }
function gd() { git diff "$@"; }
function gcm() { git commit "$@"; }
function rb() { rbt createAgainstBranch "$@";}
function rbun() { rbt updateWithNumber "$@";}
function gbg() { git branch -r | grep --ignore-case "$@"; }
function gbga() { git branch -r | grep -v Abandoned | grep --ignore-case "$@"; }
function gbf() { git branch -r | grep -v Abandoned | grep --ignore-case Folder/"$@"; }

case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
