if not status is-interactive
    exit 0
end

if string length -q -- $TMUX
    exit 0
end

set -lx SESSION_NAME Term
    
if not tmux list-sessions -F\#S | grep -q $SESSION_NAME
    tmux new -s $SESSION_NAME
else
    tmux new
end

exit 0

