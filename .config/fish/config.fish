eval (/opt/homebrew/bin/brew shellenv)

set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

set -gx PNPM_HOME $HOME/Library/pnpm
fish_add_path $PNPM_HOME

fish_add_path $HOME/.local/bin

fish_add_path $HOME/.lmstudio/bin

fish_add_path $HOME/.cargo/bin

fish_add_path /opt/homebrew/opt/ruby/bin

if status is-interactive
# Commands to run in interactive sessions can go here
	pyenv init - fish | source
	zoxide init fish | source
	fzf --fish | source
	starship init fish | source
end

