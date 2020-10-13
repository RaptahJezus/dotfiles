

# Find out what is taking so much space on your drives
alias diskspace="du -S | sort -n -r | less"


bigdir() { du -cha --max-depth=1 "$1" | grep -E "M|G"; }

# Easy way to extract archives
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1;;
           *.tar.gz)    tar xvzf $1;;
           *.bz2)       bunzip2 $1 ;;
           *.rar)       unrar x $1 ;;
           *.gz)        gunzip $1  ;;
           *.tar)       tar xvf $1 ;;
           *.tbz2)      tar xvjf $1;;
           *.tgz)       tar xvzf $1;;
           *.zip)       unzip $1   ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1;;
           *) echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

# Move 'up' so many directories instead of using several cd ../../, etc.
up() { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

# Common variations of 'ls' command
alias ls="ls -hF --color=auto"
alias ll="ls -l"
alias lo="ls -o"
alias lh="ls -lh"
alias la="ls -la"
alias sl="ls"
alias l="ls"
alias s="ls"

alias mkdir="mkdir -p"
alias fuck='sudo $(fc -ln -1)'


alias g="git"
alias ga="git add"
alias gc="git commit -m"
alias gp="git pull"

alias systemctl="sudo systemctl"


#Terminal Colors
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
