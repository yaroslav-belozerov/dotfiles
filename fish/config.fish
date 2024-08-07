if status is-interactive
    cowsay -f small "Welcome, $USER! <3"
end

zoxide init fish | source
fzf --fish | source
abbr -a gcm "git commit -m"
abbr -a gp "git push"
abbr -a gs "git status"
abbr -a dnfi "sudo dnf install -y"
abbr -a uu "sudo dnf upgrade -y && flatpak update -y"
abbr -a c_hyprland "nvim ~/.config/hypr/hyprland.conf"
abbr -a c_fish "nvim ~/.config/fish/config.fish"
abbr -a c_nvim "nvim ~/.config/nvim/init.lua"
abbr -a fehh "feh --auto-zoom --scale-down"

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

