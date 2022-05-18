# ~/.bashrc

[[ $- != *i* ]] && return

export TERM="xterm-256color"
export TERMINAL="alacritty"
export BROWSER="firefox"
export HISTCONTROL=ignoredups:erasedups
export EDITOR="vim"
export VISUAL="vim"
export GPG_TTY=$(tty)
export RANGER_LOAD_DEFAULT_RC=false
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XMONAD_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/xmonad"
export XMONAD_DATA_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/xmonad"
export XMONAD_CACHE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/xmonad"

export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
export GITHUB_ACCESS_TOKEN='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'
export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export LESS="-MR+Gg"
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export NNN_OPTS="cdDoHEx"
export NNN_OPENER='nuke'
export NNN_BMS="d:~/Downloads;D:~/Documents;t:~/Temporary" # Bookmarks
export NNN_FCOLORS="03040601000205f7d204d9f7" # File colors
export NNN_PLUG="D:-!mediainfo \$nnn" # Plugins
export NNN_TRASH=1 # Trash instead of delete the files

shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control

complete -cf sudo
complete -cf man

alias doas="doas"
alias nvim="vim"
alias vifm='./.config/vifm/scripts/vifmrun'
alias e="vim"
alias r='ranger'
alias sr='sudo ranger'
alias vv='vifm'
alias tmk='tmux kill-session'
alias svv='sudo vifm'
alias xmr='xmonad --recompile'
alias vi="vim"
alias xxx='vim ~/.config/xmonad/xmonad.hs'
alias sss='vim ~/.config/sway/config'
alias etm='vim ~/.config/tmux/tmux.conf'
alias sss='vim ~/.config/sway/config'
alias bb='source ~/.bashrc'
alias xmb='cd ~/.config/xmobar && ranger'
alias ex='vim ~/.xinitrc'
alias xr='vim ~/.Xresources'
alias ls='exa -a1 --color=always --group-directories-first --icons'
alias sx='startx'
alias own='sudo chown -hR jk:jk /home/jk'
alias lsf='fc-list | cut -f2 -d: | sort -u'
alias pcu='sudo pacman -Syu'                  # update only standard pkgs
alias pci='sudo pacman -S'                # Refresh pkglist & update standard pkgs
alias pcs='sudo pacman -Ss'                # Refresh pkglist & update standard pkgs
alias pcq='sudo pacman -Qe'                # Refresh pkglist & update standard pkgs
alias pcr='sudo pacman -R'                # Refresh pkglist & update standard pkgs
alias pcrr='sudo pacman -Rns' # remove orphaned packages
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'
alias rfk='rfkill unblock all'
alias rfl='rfkill list'

alias mrg='xrdb -merge ~/.Xresources'

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.local/share/gem/ruby/3.0.0/bin" ] ;
  then PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
fi

function cdd() {
  cd "$(\ls -d -- /home/jk | fzf --hidden)" || echo "Invalid directory"
}

PS1="\n┌──[\w]\n└───╼ \$ "

source ~/.config/shell/shortcuts/shortcuts
source ~/.config/shell/functions.sh
source ~/.config/shell/fzf_ext.sh
