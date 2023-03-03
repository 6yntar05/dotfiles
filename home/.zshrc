ZSH=/usr/share/oh-my-zsh/
#ZSH_THEME="agnoster-mod"

plugins=(history-substring-search zsh-autosuggestions zsh-syntax-highlighting command-time)

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ENABLE_CORRECTION="true"

export MANPATH="/usr/local/man:$MANPATH"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

alias ls='lsd -A --group-dirs first'
alias lsc='lsd -A --icon never'
alias s='lsd -A --group-dirs first'
alias sv='doas nvim'
alias exi='exit'

alias cocks='proxychains' #Because SOCKS

alias winfetch="neofetch --ascii_distro windows10 | sed 's/Arch Linux x86_64/Windows 10/g'"
alias ccat="pygmentize -O style=monokai -f terminal -g" #-O style=lineos

alias учше="exit"
alias сдуфк="clear"

alias rus="trans -b -t ru"
alias eng="trans -b -t en"
alias rusl="trans -t ru"
alias engl="trans -t en"

alias cpr="rsync -avz --progress -h"
alias mvr="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-sync="rsync -avzu --delete --progress -h"

alias cringefetch="neofetch --ascii_colors 4 4 --colors 4 4 4 4 4 7"
alias neofetch="neofetch --ascii_colors 7 7 --colors 7 8 7 8 8 7 --color_blocks off" # Chad-grayscale neofetch

alias rm='rm.sh'  # Sometimes doesn't work) Use /bin/rm in this case

eval "$(_PIO_COMPLETE=zsh_source pio)"

ZSH_COMMAND_TIME_MIN_SECONDS=3
ZSH_COMMAND_TIME_MSG="Execution time: %s"
ZSH_COMMAND_TIME_COLOR="cyan"
ZSH_COMMAND_TIME_EXCLUDE=(nvim vim micro)

#Based on bira:
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host="[%B%(!.%{$fg[red]%}.%{$fg[green]%})%n@%m%{$reset_color%}]"
local user_symbol='%(!.#.$)'
local current_dir="[%B%{$fg[blue]%}%~%{$reset_color%}]"

local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'
ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

PROMPT="╭──${user_host}─${current_dir}${rvm_ruby}${vcs_branch}${venv_prompt} ${return_code}
╰─%B${user_symbol}%b "
PS2=$' %{$fg[white]%}╰─%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="─(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="●"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}"

ZSH_THEME_HG_PROMPT_PREFIX="$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_HG_PROMPT_SUFFIX="$ZSH_THEME_GIT_PROMPT_SUFFIX"
ZSH_THEME_HG_PROMPT_DIRTY="$ZSH_THEME_GIT_PROMPT_DIRTY"
ZSH_THEME_HG_PROMPT_CLEAN="$ZSH_THEME_GIT_PROMPT_CLEAN"

ZSH_THEME_RUBY_PROMPT_PREFIX="─%{$fg[red]%}❬"
ZSH_THEME_RUBY_P11ROMPT_SUFFIX="❭%{$reset_color%}"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX="$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX"
ZSH_THEME_VIRTUALENV_SUFFIX="$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX"

export QSYS_ROOTDIR="/home/cirno/intelFPGA_lite/21.1/quartus/sopc_builder/bin"
