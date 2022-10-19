if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# Pacman
alias pacman='sudo pacman'
alias pacclean='sudo pacman -Rns (pacman -Qtdq)'

# Safeties
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Starship prompt
starship init fish | source
