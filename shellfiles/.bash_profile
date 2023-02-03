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

function init_ps1 {
    # enclose escape characters in \[ \] so that bash doesn't count them
    #   in the length of the prompt, makes it weird when you search through
    #   history with up/down
    local no_color="\[\e[0m\]"
    local __curr_location="[$2\w$no_color]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    PS1=" $1$__git_branch$no_color$__curr_location$ "
}

ike="\[\e[38;2;133;142;209m\]"
selen="\[\e[38;2;126;78;172m\]"
everforest_blue="\[\e[38;2;127;187;179m\]"
everforest_green="\[\e[38;2;167;192;128m\]"
everforest_red="\[\e[38;2;230;126;128m\]"

init_ps1 $everforest_red $everforest_green
. "$HOME/.cargo/env"
