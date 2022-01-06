alias home="cd $MYHOME"
alias sch="cd $SCHOOL"
alias dot="cd $DOTFILES"
alias pro="cd $PROGRAMMING"

alias ucsc="ssh ragragg@unix.ucsc.edu"
alias cse130="ssh ragragg@noggin.soe.ucsc.edu" # see lab 1 manual for other server options
alias ll="ls -la"
alias cp="cp -i"  # -i makes it so confirm needed for file overwrite
alias mv="mv -i"
# alias grep="grep -n"
alias svim="nvim -S Session.vim"
alias wvim="nvim -c 'source $DOTFILES/misc/word_mode'" # vim optimized for typing
alias lvim="nvim -c 'source $DOTFILES/misc/latex_mode'" # vim optimized for latex
alias jvim="nvim -c 'source $DOTFILES/misc/nihongo_mode'" # vim optimized for japanese work

alias rgquiz="$DOTFILES/misc/rgquiz/rgquiz"
