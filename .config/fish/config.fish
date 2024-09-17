# Disable Greeting
set fish_greeting

# Source files
# source /usr/share/doc/pkgfile/command-not-found.fish

# Paths
fish_add_path ~/.local/bin
fish_add_path /var/lib/flatpak/exports/share
fish_add_path /var/lib/flatpak/exports/bin
fish_add_path /var/lib/snapd/desktop/applications/
fish_add_path ~/.local/share/JetBrains/Toolbox/scripts

# Alias
alias dce="docker compose exec --user=1000:1000"
alias ls="ls -la"
alias fishconf="nvim ~/.config/fish/config.fish"
alias riverconf="nvim ~/.config/river/init"
alias sail="vendor/bin/sail"
alias ssh="TERM=xterm-256color $(which ssh)"
alias vi="nvim"
alias vim="nvim"

# Autostart River on TTY1
set TTY1 (tty)
[ "$TTY1" = /dev/tty1 ] && exec river >~/.river.log 2>&1
