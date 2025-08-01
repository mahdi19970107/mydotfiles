## list ##
alias l='lsd' # simple lsd
alias ls='lsd' # simple lsd
alias la='lsd --all --group-dirs first' # lsd hidden
alias ll='lsd --all --header --group-dirs first -l' # lsd long
alias lt='lsd --tree --depth=3' # lsd tree 3 lvl deep
alias ltd='lsd --tree --directory-only' # lsd tree directories only
alias ltu='lsd --tree' # lsd tree unlimited depth

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
alias fish_conf='nvim ~/.config/fish/config.fish'
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

# others
alias sys='btop'
alias clock='tty-clock -c -D -s'

alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cat='bat'
alias fzf='fzf --preview "bat --style=numbers--line-range :500 {}"'
alias exe='chmod +x'

#######################
#for arch with caelestia
alias wallpick='bash ~/.config/fish/functions/preview-and-set-wall.sh'

#######################
#for termux in android
alias ffu='wget https://raw.githubusercontent.com/mahdi19970107/MyCodeTools/refs/heads/main/ffmpeg_script.py -O "/storage/emulated/0/Pictures/Hik-Connect Album/ffmpeg_script.py" --show-progress'
alias ffc='cd /storage/emulated/0/Pictures/Hik-Connect\ Album/'
alias ffm='python /storage/emulated/0/Pictures/Hik-Connect\ Album/ffmpeg_script.py'
