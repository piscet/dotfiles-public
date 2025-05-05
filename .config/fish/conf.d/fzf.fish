set -x FZF_BINDINGS 'ctrl-d:preview-half-page-down,ctrl-u:preview-half-page-up,ctrl-j:preview-down,ctrl-k:preview-up'

alias fzf="fzf --bind '$FZF_BINDINGS'"
