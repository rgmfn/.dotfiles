export TERM=xterm-256color
#export TERM=screen-256color
#idk this just breaks it

#===ALIASES===
if [ -d "/mnt/c/Users/rygra" ] ; then  # laptop
    export MYHOME="/mnt/c/Users/rygra"
    export DOTFILES="$MYHOME/OneDrive/Documents/Programming/Github Repos/dotfiles"
    export SCHOOL="$MYHOME/OneDrive/Documents/School"

    alias dot="cd /mnt/c/Users/rygra/OneDrive/Documents/Programming/Github\ Repos/dotfiles"
fi

if [ -d "/mnt/c/Users/Ryan" ] ; then  # desktop
    export MYHOME="/mnt/c/Users/Ryan"
    export DOTFILES="$MYHOME/Documents/Programming/GithubRepos/dotfiles"
    export SCHOOL="$MYHOME/Documents/School"

    alias dot="cd /mnt/c/Users/Ryan/Documents/Programming/GithubRepos/dotfiles"
fi

alias home="cd $MYHOME"
alias school="cd $SCHOOL"
alias sch="school"
alias ucsc="ssh ragragg@unix.ucsc.edu"
alias ll="ls -la"
alias cp="cp -i"  # -i makes it so confirm needed for file overwrite
alias mv="mv -i"
alias tvim="nvim -c 'source $DOTFILES/word_mode' -c 'Goyo'" # vim optimized for typing
alias lvim="nvim -c 'source $DOTFILES/word_mode'" # vim optimized for latex
#---END OF ALIASES---

#home # starts us in the home directory
#^ happens for every tmux that opens :(
