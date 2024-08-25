# Disable Greeting
set fish_greeting

# Env Variables
set -x BROWSER firefox
set -x EDITOR nvim
set -x GTK_THEME Adwaita-dark
set -x MOZ_ENABLE_WAYLAND 1
# set -x QT_QPA_PLATFORM wayland
set -x QT_STYLE_OVERRIDE kvantum
set -x TERMINAL foot
set -x VISUAL nvim
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_SESSION_TYPE wayland
set -x XKB_DEFAULT_LAYOUT us

# Only load Nvidia env variables on desktop
if test $hostname = archlinux-desktop
    set -x LIBVA_DRIVER_NAME nvidia
    set -x GBM_BACKEND nvidia-drm
    set -x __GLX_VENDOR_LIBRARY_NAME nvidia
end

# Source files
source /usr/share/doc/pkgfile/command-not-found.fish

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
alias vi="nvim"
alias vim="nvim"

# Autostart River on TTY1
set TTY1 (tty)
[ "$TTY1" = /dev/tty1 ] && exec river >~/.river.log 2>&1
