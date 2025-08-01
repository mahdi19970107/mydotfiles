## list ##
alias l='lsd' # file list with colors and icons
alias ls='lsd' # file list with colors and icons
alias la='lsd -a ' # list all files including hidden ones
alias ll='lsd -l -a  --no-time' # long list with all files including hidden ones
alias lt='lsd --tree --depth=2' # tree-like structure with 2 levels deep
alias l.='lsd | egrep "^\."'
alias l.='lsd --group-directories-first ../' # ls on the PARENT directory
alias l..='lsd -al --group-directories-first ../../' # ls on directory 2 levels up
alias l...='lsd -al --group-directories-first ../../../' # ls on directory 3 levels up

alias cat='bat --style header --style snip --style changes --style header'  # cat

# navigation
alias ..='cd ..'    # go back
alias ...='cd ../..'    # go back 2 steps
alias .='cd /'  # go to root dir
alias cd='z'

# other
alias src='clear && source ~/.config/fish/config.fish'
alias c='clear'
alias q='exit'


#fzf
alias find='nvim $(fzf --preview="bat{}")'

#nvim
alias v='nvim'
alias nv='nvim .'
alias svv='sudo -E nvim -d'
alias sv='sudo nvim'
alias fish_conf='nvim ~/.config/fish/config.fish'


# others
alias nc='clr && neofetch'
alias ff='clr && fastfetch'
alias sys='btop'
alias clock='tty-clock -c -D -s'

alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cat='bat'
alias fzf='fzf --preview "bat --style=numbers--line-range :500 {}"'
alias exe='chmod +x'

alias wallpick='bash ~/.config/fish/functions/preview-and-set-wall.sh'

#######################
#for termux in android#
#######################

