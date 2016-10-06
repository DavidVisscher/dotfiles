export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=/home/david/.oh-my-zsh

ZSH_THEME="afowler"

# Enable command auto-correction.
 ENABLE_CORRECTION="true"

plugins=(git mvn git git-extras sublime sudo systemd web-search gem)

source $ZSH/oh-my-zsh.sh

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias clear="hor_line;clear;printlogo";

printlogo(){
        tput setaf 3 && toilet David-Laptop -f pagga;
        tput setaf 9;
}

provide_duck(){
	echo "Activating Duck Provider Module";
	sleep 2;
	echo "Priming Duck Delivery Module";
	sleep 2;
	echo "Release ducking clamps";
	sleep 2;
	echo "Deploying duck";
	sleep 2;
	cat /home/david/.duck
}

hor_line(){
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' - ;
}

#printlogo

# Quick install Aliases
alias "getme"="sudo apt install";
alias "npmme"="sudo npm install";
alias "gemme"="sudo gem install";

# Composer Aliases
export PATH=$PATH:~/.composer/vendor/bin;

# Wireshark Aliases
alias "draadhaai"="wireshark";
alias "superdraadhaai"="sudo wireshark";

#Ruby Version Manager etc.
#alias "ruby"="ruby2.2";
#alias "gem"="gem2.2";

export PATH="$PATH:$HOME/.rvm/bin"; #Add RVM to PATH for scripting
export PATH="$PATH:/usr/share/john/run";

#Python3 as default
alias python="python3"
alias pip="pip3"

#tmux alias
alias tmux="tmux -2"

#Colourize Maven
alias mvn="mvn-color"

export NVM_DIR="/home/david/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
