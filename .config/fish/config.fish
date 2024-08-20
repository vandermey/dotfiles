set fish_greeting

set -x BROWSER "firefox"
set -x EDITOR "nvim"
#set -x GDK_BACKEND "wayland"
set -x GTK2_RC_FILES "/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc"
set -x GTK_THEME "Adwaita-dark"
#set -x LANG "en_US.UTF-8"
#set -x LC_ALL "en_US.UTF-8"
set -x MANPATH "$HOME/.local/share/man/:$MANPATH"
set -x MOZ_ENABLE_WAYLAND 1
set -x QT_QPA_PLATFORM "wayland"
set -x QT_QPA_PLATFORMTHEME "Adwaita-dark"
set -x QT_STYLE_OVERRIDE "Adwaita-Dark"
set -x TERMINAL "foot"
set -x VISUAL "nvim"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_SESSION_TYPE "wayland"
set -x XKB_DEFAULT_LAYOUT "us"

fish_add_path ~/.local/bin

set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec river
