###############################################################################
# Path to your oh-my-zsh installation.
###############################################################################
export ZSH=/Users/adro/.oh-my-zsh


###############################################################################
# Set name of the theme to load.
###############################################################################
ZSH_THEME="adro"


###############################################################################
# Red dots on waitign for completion
###############################################################################
COMPLETION_WAITING_DOTS="true"


###############################################################################
# History command output date format
###############################################################################
HIST_STAMPS="dd/mm/yyyy"


###############################################################################
# ZSH Plugins
# Example format: plugins=(rails git textmate ruby lighthouse)
###############################################################################
plugins=(git)


###############################################################################
# Other configurations not needed at moment
###############################################################################

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"



#==============================================================================
#=========================  USER CONFIGURATIONS  ==============================
#==============================================================================


###############################################################################
# Main Enviroment Path
###############################################################################
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="/usr/local/heroku/bin:/Users/adro/Library/Python/2.7/bin:/usr/local/mysql/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin/pg_config:/Applications/Postgres.app/Contents/Versions/9.4/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Users/adroaldo/.rvm/bin"

source $ZSH/oh-my-zsh.sh

export ARCHFLAGS="-arch x86_64" 
export LDFLAGS="-L/usr/local/opt/openssl/lib" 
export CFLAGS="-I/usr/local/opt/openssl/include"


###############################################################################
# Environment Language
###############################################################################
export LANG=en_US.UTF-8



###############################################################################
# Postgres App Path
###############################################################################
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin


###############################################################################
# Android SDK
###############################################################################
# export ANDROID_SDK="usr/local/opt/android-sdk"
# export ANDROID_NDK="usr/local/opt/android-sdk"
# export ANDROID_HOME="$ANDROID_SDK"
# export ANDROID_PLATFORM_TOOLS="$ANDROID_SDK/platform-tools"
# export PATH="${PATH}:$ANDROID_HOME/tools:$ANDROID_PLATFORM_TOOLS"


###############################################################################
# Github info
###############################################################################
export GITHUB_USERNAME=""
export GITHUB_ACCESS_TOKEN=""


###############################################################################
# Fiddus Server Configurations
###############################################################################

# Amazon Access Key and Secret
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

# MailGun API Key
export MAILGUN_APIKEY=


###############################################################################
# PyEnv autocomplete
###############################################################################
# To use Homebrew's directories rather than ~/.pyenv add to your profile:
# export PYENV_ROOT=/usr/local/var/pyenv

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs


###############################################################################
# Ruby Env
###############################################################################
if which rbenv > /dev/null; 
    then eval "$(rbenv init -)"; 
fi


###############################################################################
# NVM Path
###############################################################################
export NVM_DIR="/Users/adro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


###############################################################################
# NVM Path
###############################################################################
export NVM_DIR="/Users/adro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


###############################################################################
# Android Path
###############################################################################
# adb
export PATH=${PATH}:/Users/adro/androidsdk

# android
export PATH=${PATH}:/Users/adro/androidsdk/tools


###############################################################################
# Genymotion Shell Path
###############################################################################
export PATH=${PATH}:/Applications/Genymotion\ Shell.app/Contents/MacOS