alias home="cd $MYHOME"
alias sch="cd $SCHOOL"
alias dot="cd $DOTFILES"
alias pro="cd $PROGRAMMING"

alias spot="cd $SCHOOL/CSE115/spotify-tags/"
alias ucsc="ssh ragragg@unix.ucsc.edu"
alias cse130="ssh ragragg@olaf.soe.ucsc.edu" # see lab 1 manual for other server options
alias funcs="source funcs"
alias ls="exa"
alias ll="exa -alh"
alias cat="bat"
alias tree="exa --tree"
alias cp="cp -i"  # -i makes it so confirm needed for file overwrite
alias mv="mv -i"
alias python="python3"
alias svim="nvim -S Session.vim"
alias tvim="nvim -c 'source $DOTFILES/misc/word_mode'" # vim optimized for typing
alias lvim="nvim -c 'source $DOTFILES/misc/latex_mode'" # vim optimized for latex
alias jvim="nvim -c 'source $DOTFILES/misc/nihongo_mode'" # vim optimized for japanese work
alias tka="tmux kill-server" # tmux kill-all
alias tks="tmux kill-session -t"
alias tls="tmux ls"

alias scim="sc-im --xlsx_readformulas"
# alias hx="$HOME/.cargo/bin/hx"

alias rgquiz="$DOTFILES/misc/rgquiz/rgquiz"

alias sleep="sudo sh -c 'echo mem > /sys/power/state'"

alias colo="echo -e -\033]50;SetProfile=$1\a-"
