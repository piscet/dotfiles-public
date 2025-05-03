# execute tmux
set -l current_path (dirname (status --current-filename))

# source $current_path/variable.fish
if test -f $current_path/variable.fish
    source $current_path/variable.fish
end

source $current_path/tmux.fish

# XDG Based Directory
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME  $HOME/.cache
set -x XDG_STATE_HOME  $HOME/.local/state
set -x XDG_DATA_HOME   $HOME/.local/share

# User APP Settings
set -x USR_APP_HOME    $HOME/.local/app
set -x USR_HIST_HOME   $HOME/.local/history

# PATH
fish_add_path $HOME/.local/bin

# setting EDITOR and PAGER
set -x EDITOR vim
set -x VISUAL vim
set -x PAGER  less
#set -x PAGER  most
set -x SUDO_EDITOR rvim
set -x SYSTEMD_LESS FRXMK

# less setting
# set -x LESS '-g -i -M -R -w -z-4 -x4'
set -x LESSKEYIN    $XDG_CONFIG_HOME/common/lesskey
set -x LESSHISTFILE $XDG_STATE_HOME/lesshst
set -x LESS         -i -M -R -F -w -z-4 -x4

# most setting
set -x MOST_INITFILE "$XDG_CONFIG_HOME/common/mostrc"

for config_file in $current_path/conf.d/*.fish
    source $config_file
end

# run local.fish
if test -f $current_path/local.fish
    source $current_path/local.fish
end

