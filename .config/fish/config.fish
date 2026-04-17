if status is-interactive
  # Commands to run in interactive sessions can go here
end

# CUSTOM EXPORTS by USER
set -gx PYENV_ROOT "$HOME/.pyenv"
if test -d "$PYENV_ROOT/bin"
  if not contains -- "$PYENV_ROOT/bin" $PATH
    set -gx PATH "$PYENV_ROOT/bin" $PATH
  end
end

##########
# pyenv configuration
##########
# Add pyenv executable to PATH by running
# the following interactively:

set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

# Load pyenv automatically by appending
# the following to ~/.config/fish/config.fish:

pyenv init - fish | source

##########
#nvm configuration
##########
set -gx NVM_DIR "$HOME/.nvm"
# nvm.sh is bash/zsh; in fish, load it via bass if available.
function nvm
   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use default --silent

##########
# pnpm
##########
set -gx PNPM_HOME "$HOME/Library/pnpm"
if test -d "$PNPM_HOME"
  if not contains -- "$PNPM_HOME" $PATH
    set -gx PATH "$PNPM_HOME" $PATH
  end
end
# pnpm end

##########
# Claude Path
##########
if not contains -- "$HOME/.local/bin" $PATH
  set -gx PATH $PATH "$HOME/.local/bin"
end

##########
# Added by LM Studio CLI (lms)
##########
if not contains -- "$HOME/.lmstudio/bin" $PATH
  set -gx PATH $PATH "$HOME/.lmstudio/bin"
end
# End of LM Studio CLI section

##########
# Homebrew ruby binary
##########
if not contains -- "/opt/homebrew/opt/ruby/bin" $PATH
  set -gx PATH "/opt/homebrew/opt/ruby/bin" $PATH
end
