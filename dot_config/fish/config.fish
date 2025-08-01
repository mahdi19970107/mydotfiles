if status is-interactive
        starship init fish | source
end

if type -q fastfetch
        fastfetch
end

if type -q zoxide
    zoxide init fish | source
end

if type -q thefuck
    thefuck --alias | source
end

# Load custom aliases
source ~/.config/fish/aliases.fish