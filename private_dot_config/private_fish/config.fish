# add cargo bin path
fish_add_path "$HOME/.cargo/bin"

# set default editor to nvim
set -Ux EDITOR "nvim"
if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    starship init fish | source
end