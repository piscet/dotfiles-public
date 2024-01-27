if not status is-interactive
    exit 0
end

if set -q SSH_CLIENT ;or string length -q -- $TMUX
    exit 0
end

if not set -q SESSION_NAME
    set -x SESSION_NAME Term
end

if not tmux list-sessions -F\#S | grep -q $SESSION_NAME
    tmux new -s $SESSION_NAME
else
    tmux new
end

exit 0

