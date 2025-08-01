if status is-interactive
    if not set -q SSH_TTY; and not string match -q '/dev/tty*' (tty)
        starship init fish | source
    end
end

function should_load_tools
    # Load if not tty, or if SSH, or if running in Termux
    if not string match -q '/dev/tty*' (tty)
        return 0
    end
    if set -q SSH_TTY
        return 0
    end
    if set -q TERMUX_VERSION
        return 0
    end
    return 1
end

if type -q fastfetch
    should_load_tools; and fastfetch
end

if type -q zoxide
    should_load_tools; and zoxide init fish | source
end

if type -q thefuck
    should_load_tools; and thefuck --alias | source
end

# Load custom aliases
source ~/.config/fish/aliases.fish

set -Ux EDITOR "code --wait"