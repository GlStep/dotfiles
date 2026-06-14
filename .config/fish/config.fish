eval (/opt/homebrew/bin/brew shellenv)

if not set -q nvm_default_version
	set --universal nvm_default_version lts
end

set -gx PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

set -gx PNPM_HOME $HOME/Library/pnpm
fish_add_path $PNPM_HOME

fish_add_path $HOME/.local/bin

fish_add_path $HOME/.lmstudio/bin

fish_add_path $HOME/.cargo/bin

fish_add_path /opt/homebrew/opt/ruby/bin

if status is-interactive
	pyenv init - fish | source
	zoxide init fish | source
	fzf --fish | source
	starship init fish | source

	abbr pya "pyenv activate"
	abbr pyd "pyenv deactivate"

	abbr pd "pnpm run dev"
	abbr pb "pnpm run build"

	abbr gs "git status"
	abbr gd "git diff"
	abbr gl "git log --oneline --graph --decorate"

	abbr reload "source ~/.config/fish/config.fish; echo 'Fish has been reloaded'"
end

