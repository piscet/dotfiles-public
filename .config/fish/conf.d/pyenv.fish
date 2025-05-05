set -x PYENV_ROOT "$HOME/.local/app/.pyenv"

if not test -d $PYENV_ROOT
    exit 0
end

#set -x PATH $PYENV_ROOT/bin $PATH
fish_add_path $PYENV_ROOT/bin $PATH
pyenv init - | source

