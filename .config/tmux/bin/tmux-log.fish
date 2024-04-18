mkdir -p /tmp/tmux-log
tmux capture-pane -pS - > /tmp/tmux-log/tmux-(date "+%Y%m%d-%H%M%S")

