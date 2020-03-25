#===== my aliases & functions =====
alias myls='exa -la'
alias ls='exa'
alias cat='bat'
alias mycd='cd $WKDIR'
function myclip_echo () {
    echo ${1/\/mnt\/c/c:} | clip.exe
}
function myclip_cat () {
    if [[ $(uname -a) =~ Microsoft ]]; then
        local fn='clip.exe'
    else
        local fn='pbcopy' # for mac
    fi
    if [ $# -eq 1 ]; then
        cat $1 | $fn
    elif [ $# -ge 3 ]; then
        local tmp1='^'
        local tmp2='$'
        if [ $# -eq 5 ]; then
            local i
            i=$4
            while [ $i -gt 0 ]; do
                tmp1=$tmp1"."
                i=$(($i - 1))
            done
            i=$5
            while [ $i -gt 0 ]; do
                tmp2="."$tmp2
                i=$(($i - 1))
            done
        fi
        sed -n $2,$3p $1 | sed "1 s/$tmp1//" | sed "$ s/$tmp2//" | $fn
    fi
}

#===== brew =====
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

#===== windows path =====
export PATH="/mnt/c/WINDOWS/system32:$PATH"

#===== exa =====
export PATH="$HOME/.exa:$PATH"

#===== starship =====
eval "$(starship init bash)"
