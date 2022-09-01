# export TERM=xterm-256color
# export TERM=screen-256color

export PATH=$PATH:/usr/local/go/bin

if [ -f ~/.bash_exports ]; then
    source $HOME/.bash_exports
fi

# automatically ran
if [[ -f ~/.zshrc && "$SHELL" == "/usr/bin/zsh" ]]; then
    # echo "should run zshrc"
#     source $HOME/.zshrc
    source $HOME/.bash_aliases  # doesn't get run by zshrc
fi

if [[ -f ~/.bashrc && "$SHELL" == "/bin/bash" ]]; then
    # echo "should run bashrc"
    source $HOME/.bashrc
    # bashrc calls bash_alias
fi

PS1="[\[\e[0m\e[38;2;131;142;209m\]\w\[\e[0m]\]$ " # pomu and ike
