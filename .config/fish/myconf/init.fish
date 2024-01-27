# execute tmux
set -l current_path (dirname (status --current-filename))
source $current_path/variable.fish
source $current_path/tmux.fish

# XDG Based Directory
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME  $HOME/.cache
set -x XDG_STATE_HOME  $HOME/.local/state
set -x XDG_DATA_HOME   $HOME/.local/share

# User APP Settings
set -x USR_APP_HOME    $HOME/.local/app

# setting EDITOR and PAGER
set -x EDITOR vim
set -x VISUAL vim
set -x PAGER  less
set -x SUDO_EDITOR rvim
set -x SYSTEMD_LESS FRXMK

# less setting
set -x LESS '-g -i -M -R -w -z-4 -x4'

# run conf.d/*.fish

for config_file in $current_path/conf.d/*.fish
    source $config_file
end

# run local.fish
source $current_path/local.fish

