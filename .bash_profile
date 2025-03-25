#
# ~/.bash_profile
#

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ -f ~/.bashrc ]] && . ~/.bashrc
. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"


# Added by Toolbox App
export PATH="$PATH:/home/glebs/.local/share/JetBrains/Toolbox/scripts"

