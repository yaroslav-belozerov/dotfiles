if status is-interactive
    cowsay -f skeleton "Welcome, $USER! <3" | lolcat -h 0.75 -v 1
end

zoxide init fish | source
fzf --fish | source

### Arrbreviations
# Git
abbr -a gcm "git commit -m"
abbr -a gp "git push"
abbr -a gs "git status"
abbr -a ggraph "git log --graph --decorate --oneline"

# Packages 
abbr -a dnfi "sudo dnf install -y"
abbr -a uu "sudo dnf upgrade -y && flatpak update -y"

# Configs
abbr -a c_hyprland "nvim ~/.config/hypr/hyprland.conf"
abbr -a c_fish "nvim ~/.config/fish/config.fish"
abbr -a c_nvim "nvim ~/.config/nvim/init.lua"

# Misc
abbr -a fehh "feh --auto-zoom --scale-down"
abbr -a dfh "df -h | grep /dev/nvme0n1p3 | head -n 1 | awk '{print \$4;print \$5}'"
abbr -a ssys "sudo systemctl"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/yaroslav/anaconda3/bin/conda
    eval /home/yaroslav/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/yaroslav/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/yaroslav/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/yaroslav/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


fish_add_path /home/yaroslav/.spicetify

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/yaroslav/.ghcup/bin $PATH # ghcup-env
