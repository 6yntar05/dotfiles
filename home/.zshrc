ZSH=/usr/share/oh-my-zsh/
#ZSH_THEME="fishy"
ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

plugins=(git sudo rsync npm lol kate command-not-found zsh-autosuggestions history-substring-search zsh-syntax-highlighting)

export MANPATH="/usr/local/man:$MANPATH"
export LANG=ru_RU.UTF-8
export EDITOR='micro'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

alias "ls"="lsd -a --group-dirs first"
alias "lsc"="lsd -a --icon never"
alias "sm"="sudo micro"

alias "winfetch"="neofetch --ascii_distro windows10 | sed 's/Arch Linux x86_64/Windows 10/g'"

alias учше=exit
alias сдуфд=clear

alias "рус"="trans -b -t ru"
alias "русский"="trans -b -t ru"
alias "rus"="trans -b -t ru"
alias "eng"="trans -b -t en"
alias "инглиш"="trans -b -t en"