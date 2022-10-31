if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias "nv"="nvim"
alias "policy"='apt-cache policy'

alias ll='exa -l -g --icons'
alias ..='cd ../'

alias pd='peco_change_directory'
alias ph='peco_select_history'

function _peco_change_directory
    if [count $argv]
        peco --layout=bottom-up --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g|read foo' 
    else
        peco --layout=bottom-up |perl -pe 's/([ ()])/\\\\$1/g'|read foo
    end
    if [ $foo ]
        builtin cd $foo
    else
        commandline ''
    end
end

function peco_change_directory
    begin
        echo $HOME/.config
        ls -ad */|perl -pe "s#^#$PWD/#"|grep -v \.git
        ls -ad $HOME/odin_java/*/* |grep -v \.git
    end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end

function peco_select_history
    if test (count $argv) = 0
        set peco_flags --layout=bottom-up
    else
        set peco_flags --layout=bottom-up --query "argv"
    end
    
    history|peco $peco_flags|read foo

    if [ $foo ]
        commandline $foo
    else 
        commandline ''
    end
end

function ide 
    tmux split-window -v -p 30 
    tmux split-window -h -p 66 
end

starship init fish | source

