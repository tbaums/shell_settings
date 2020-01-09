# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export GOPATH=$HOME/go
export PATH="/usr/local:/usr/local/Cellar/pyenv-virtualenv/1.1.3/shims:/Users/michael/.pyenv/shims:/Users/michael/.krew/bin:/usr/local/opt/icu4c/sbin:/usr/local/opt/icu4c/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki:/Users/michael/google-cloud-sdk/bin:/Users/michael/go/bin:/usr/local/go"

# Path to your oh-my-zsh installation.
export ZSH="/Users/michael/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

_fix_cursor() {
     echo -ne '\e[5 q'
   }

precmd_functions+=(_fix_cursor)
# Change the highlight color to be readable
# # Declare the variable
# typeset -A ZSH_HIGHLIGHT_STYLES
#
# # To differentiate aliases from other command types
#ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan,bold'
#
# # To have paths colored instead of underlined
#ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
#
# # To disable highlighting of globbing expressions
#ZSH_HIGHLIGHT_STYLES[globbing]='fg=black'
#
# # To turn char  dark against bright cursor
#ZSH_HIGHLIGHT_STYLES[cursor]='fg=blue'



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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
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
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias k="kubectl"
alias wk="watch kubectl"
alias kk="kubectl-kudo"
alias kg="kubectl get"
alias kga="kubectl get all --all-namespaces"
alias kd="kubectl describe"
alias kdp="kubectl describe pod"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# Start pyenv at startup time
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/michael/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/michael/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/michael/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/michael/google-cloud-sdk/completion.zsh.inc'; fi
