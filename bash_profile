parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

pasrse_file_number() {
    ls -1 | wc -l | sed 's: ::g'
}

export PS1="\n\[\033[32m\]\w\[\033[0m\]\n\[\033[33m\]\$(parse_git_branch)\[\033[0m\]\n\[\033[1;36m\]\$(pasrse_file_number) files\[\033[0m\] -> "
# \n
# \[\033[32m\]\w\[\033[0m\]      location
# \n
# \[\033[33m\]\$(parse_git_branch)\[\033[0m\]     git  branch
# \n
# \[\033[1;36m\]\$(pasrse_file_number) files\[\033[0m\] ->     number of files

export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias g='git'
export CVSROOT=:ext:ptewari@vidyocvs.vidyo.com:/cvs
