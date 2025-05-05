# tmux settings
function man-fzf ()
    man (man -k . | awk '{print $1 $2}' | fzf --preview 'man {} 2> /dev/null')
end

