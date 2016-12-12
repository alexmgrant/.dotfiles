# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Node Package Manager & Node
export PATH=$PATH:/usr/local/bin/npm
export PATH="$HOME/.node/bin:$PATH"

# Ruby default setup
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/Users/alexg/.rvm/gems/ruby-2.2.1/bin:/Users/alexg/.rvm/gems/ruby-2.2.1@global/bin:/Users/alexg/.rvm/rubies/ruby-2.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/alexg/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# NVM (node version manager)
export NVM=/Users/alexg/.nvm/nvm.sh
source $NVM

# Android SDK
export PATH=${PATH}:/Applications/Android\ Studio.app/sdk/platform-tools:/Applications/Android\ Studio.app/sdk/tools
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=/usr/local/bin:$PATH
# export ANDROID_HOME=/Users/alexg/Library/Android/sdk/
# export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 #else
  # export EDITOR='vim'
 #fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias portUsage='sudo lsof -i -n -P | grep TCP'

vim-install-plugin() {
    cd ~/.vim_runtime
    echo 'now git clone your new plugin :)'
}

#npm install alias
npmid() {
  vared -p "Enter npm package : " -c package
  echo "Installing $package"
  npm i $package --save-dev
}

#keep mac awakeA
stay_awake() {
    pmset noidle
}

#ionic builds
cc_package_android() {
    vared -p "Is this for release? y or n?: " -c PACKAGE_TYPE 
	cd ~/Projects/cc3.mobile/ 
    if [ "$PACKAGE_TYPE" == "y" ]
        then 
            echo "Launch ionic package 🚀 for --release "
            ionic package build android --release --profile cc3_security_profile
            return
    fi
    echo "Launch ionic package 🚀 for with --debug"
    ionic package build android --debug --profile cc3_security_profile
}

ionic_deploy() {
	vared -p "Which channel? dev stage production: " -c CHANNEL_TAG 
    vared -p "Release Notes: " -c RELEASE_NOTES
	echo "Ionic deploy deployed 🚀 "
    cd ~/Projects/cc3.mobile/
	ionic upload --note $RELEASE_NOTES --deploy $CHANNEL_TAG
}

