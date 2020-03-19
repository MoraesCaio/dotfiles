export TERM="xterm-256color"
export ZSH=$HOME"/.oh-my-zsh"

# ZSH_THEME="powerlevel9k/powerlevel9k"
# THEME_FILE="$HOME/.oh-my-zsh/custom/themes/agnoster-timestamp-newline.zsh-theme"
# if [ ! -f "$THEME_FILE" ]; then
#     curl https://raw.githubusercontent.com/DylanDelobel/agnoster-timestamp-newline-zsh-theme/master/agnoster-timestamp-newline.zsh-theme -o "$THEME_FILE"
# fi

ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="agnoster-timestamp-newline"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"plugins=(

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the ZSH_THEME="powerlevel9k/powerlevel9k"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# colorize
# [ccat or cless] <file>

# rsync
# rsync-copy	rsync -avz --progress -h
# rsync-move	rsync -avz --progress -h --remove-source-files
# rsync-update	rsync -avzu --progress -h
# rsync-synchronize	rsync -avzu --delete --progress -h

plugins=(
    colorize
    docker
    gitfast
    rsync
    tmux
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

# my aliases
alias l='ls -l'
alias la='ls -a'
alias t='tree'
alias lla='ls -la'
alias rm='rm -i'
alias h='htop'
alias ca='conda activate'
alias de='conda deactivate'
alias ds="cd /home/caiomoraes/Documents/windowsDocuments/deeper_systems"

# allows Ctrl+S to search forward after using Ctrl+R
stty -ixon

# remove o username
DEFAULT_USER=`whoami`

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($HOME'/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f $HOME"/miniconda3/etc/profile.d/conda.sh" ]; then
        . $HOME"/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH=$HOME"/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# <<< conda initialize <<<

conda activate sci-img

setopt HIST_IGNORE_SPACE
autoload -U compinit && compinit

source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Path to your oh-my-zsh installation.
source $ZSH/oh-my-zsh.sh