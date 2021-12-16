# export TERM=xterm-256color
# export TERM=screen-256color

#===ALIASES===
if [ -d "/mnt/c/Users/rygra" ]; then  # laptop
    export MYHOME="/mnt/c/Users/rygra"
    export DOTFILES="$MYHOME/OneDrive/Documents/Programming/GithubRepos/dotfiles"
    export SCHOOL="$MYHOME/OneDrive/Documents/School"
fi

if [ -d "/mnt/c/Users/Ryan" ]; then  # desktop
    export MYHOME="/mnt/c/Users/Ryan"
    export DOTFILES="$MYHOME/Documents/Programming/GithubRepos/dotfiles"
    export SCHOOL="$MYHOME/Documents/School"
fi

if [ -d "/home/ryan/" ]; then  # linux laptop
    export MYHOME="/home/ryan"
    export DOTFILES="$MYHOME/dotfiles"
    export SCHOOL="$MYHOME/Documents/School"
fi

alias home="cd $MYHOME"
alias school="cd $SCHOOL"
alias sch="school"
alias dot="cd $DOTFILES"
alias ucsc="ssh ragragg@unix.ucsc.edu"
alias ll="ls -la"
alias cp="cp -i"  # -i makes it so confirm needed for file overwrite
alias mv="mv -i"
alias cvim="nvim -S Session.vim"
alias tvim="nvim -c 'source $DOTFILES/word_mode'" # vim optimized for typing
alias lvim="nvim -c 'source $DOTFILES/latex_mode'" # vim optimized for latex
#---END OF ALIASES---

export PATH=$PATH:/usr/local/go/bin
