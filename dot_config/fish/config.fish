if status is-interactive
    if not set -q SSH_TTY; and not string match -q '/dev/tty*' (tty)
        starship init fish | source
    end
end

if type -q fastfetch
    if not set -q SSH_TTY; and not string match -q '/dev/tty*' (tty)
        fastfetch
    end
end

if type -q zoxide
    zoxide init fish | source
end

if type -q thefuck
    thefuck --alias | source
end

# Load custom aliases
source ~/.config/fish/aliases.fish