if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
abbr -a gcm "git commit -m"
abbr -a gp "git push"
abbr -a gs "git status"
abbr -a dnfi "sudo dnf install -y"
abbr -a dnfu "sudo dnf upgrade"
abbr -a nv-hyprland-config "nv ~/.config/hypr/hyprland.conf"
abbr -a feh "feh --auto-zoom --scale-down"

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

