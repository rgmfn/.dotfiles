# export TERM=xterm-256color
# export TERM=screen-256color

export PATH=$PATH:/usr/local/go/bin

if [ -f ~/.bash_exports ]; then
    source $HOME/.bash_exports
fi

# automatically ran
# if [[ -f ~/.zshrc && "$SHELL" == "/usr/bin/zsh" ]]; then
#     echo "should run zshrc"
#     source $HOME/.zshrc
# fi

if [[ -f ~/.bashrc && "$SHELL" == "/bin/bash" ]]; then
    # echo "should run bashrc"
    source $HOME/.bashrc
fi
