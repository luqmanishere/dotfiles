# add cargo bin path
fish_add_path "$HOME/.cargo/bin"

# aliases
if type -q "eza"
    alias ls="eza --git --group-directories-first --time-style=long-iso"
    alias l="ls -1"
    alias sl="ls"
    alias ll="ls -al"
    alias la="ls -lbhHigUmuSa"
    alias tree="eza --tree"
end

alias ip="ip --color=auto"

alias tm="tmux attach -t main || tmux new -s main";

# set default editor to nvim
set -Ux EDITOR "nvim"
if status is-interactive
    # Commands to run in interactive sessions can go here
    # keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
    keychain --eval gitmain | source
    zoxide init fish | source
    starship init fish | source
end
