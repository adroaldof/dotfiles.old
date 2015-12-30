[<-- Back](../README.md)

# Reintalling Every Thing

Well, let's start all the fun :(

## Xcode

Open `App Store` and donwload `Xcode`, it will be needed form some installations


## Git

1. [Download](http://git-scm.com/download/mac) and install Git

1. Generate a new ssh key
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

1. You need to set up a new ssh key to [Github](https://github.com/settings/ssh) and [Gitlab](https://gitlab.com/profile/keys) 


## Oh-My-ZSH

1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
1. Copy `.zshrc` to `/Users/adro/` 

1. Copy `adro.zsh-theme` to `/Users/adro/.oh-my-zsh/themes`

1. Change the default shell 
```bash
chsh -s /bin/zsh
```


## Brew

1. Install [Home Brew](http://brew.sh/)
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


## NVM

1. Install [Node Version Manager](https://github.com/creationix/nvm)
```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
```

1. Install the stable node version
```bash
nvm install stable
```

1. Install some develpment packages
```bash
npm install -g bower grunt node-gyp jshint jsonlint cordova ionic gulp ios-sim ios-deploy
```


## PyEnv

1. Install `pyenv` with `brew`
```bash
brew install pyenv
```

1. Add the follow to `.zshrc` file
	```text
	###############################################################################
	# PyEnv
	###############################################################################
	# To use Homebrew's directories rather than ~/.pyenv add to your profile:
	# export PYENV_ROOT=/usr/local/var/pyenv

	if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

	source /usr/local/bin/virtualenvwrapper.sh
	export WORKON_HOME=~/.virtualenvs
	```

1. Install a python versions
```bash
pyenv install --list
pyenv install 3.5.1
pyenv global 3.5.1
pyenv versions
```

1. Install virtualenvwrapper and ipython
```bash
pip install virtualenvwrapper
pip install ipython
mkvirtualenv <project-name>
deactivate # when done
workon <project-name> # to work again
```
