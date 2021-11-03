export TERM=xterm-256color
#export TERM=screen-256color
#idk this just breaks it

#===ALIASES===
alias ucsc="ssh ragragg@unix.ucsc.edu"
alias ll="ls -la"
alias cp="cp -i"  # -i makes it so confirm needed for file overwrite
alias mv="mv -i"

if [ -d "/mnt/c/Users/rygra" ] ; then  # home for laptop
    alias home="cd /mnt/c/Users/rygra/"
    export DOTFILES="/mnt/c/Users/rygra/OneDrive/Documents/Programming/Github repos/dotfiles"
fi

if [ -d "/mnt/c/Users/Ryan" ] ; then  # home for desktop
    alias home="cd /mnt/c/Users/Ryan/"
    export DOTFILES="/mnt/c/Users/Ryan/Documents/Programming/Github repos/dotfiles"
fi

#---END OF ALIASES---

home # starts us in the home directory
