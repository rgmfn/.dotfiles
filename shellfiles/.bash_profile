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
    local ike="\[\e[38;2;133;142;209m\]"
    local selen="\[\e[38;2;126;78;172m\]"
    local no_color="\[\e[0m\]"
    local __curr_location="[$ike\w$no_color]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    PS1=" $selen$__git_branch$no_color$__curr_location$ "
}

init_ps1
