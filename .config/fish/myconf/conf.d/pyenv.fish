if not test -d $USR_APP_HOME/.pyenv
    exit 0
end

set -x PYENV_ROOT "$USR_APP_HOME/.pyenv"
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

