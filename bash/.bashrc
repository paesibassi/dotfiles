# .bashrc is sourced by .bash_profile

export PATH="$PATH:/Users/federico/Library/Python/2.7/bin"
export PATH="$PATH:Users/federico/Library/Python/3.6/bin"
export PATH="$PATH:/anaconda3/bin"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Git completion
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

# bash command prompt
export PS1="[\A]\u:\W\\$ "

# Git prompt customization
if [ -f ~/.git-prompt.sh ]; then
	GIT_PS1_SHOWUPSTREAM="auto"
	GIT_PS1_SHOWCOLORHINTS="yes"
	source ~/.git-prompt.sh
	export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
fi

# command history settings
export HISTSIZE=5000                      # 500 is default
export HISTFILESIZE=100000
export HISTTIMEFORMAT='%b %d %I:%M %p '    # using strftime format
export HISTCONTROL=ignoreboth              # ignoredups:ignorespace
#export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"

# command aliases
alias ll='ls -lahG'
alias home='cd ~'
#alias up='cd ..'
#alias h='history'
alias py3='source ~/Repositories/py3env/bin/activate && which python'

# command options
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
#alias mkdir='mkdir -p'
alias sp='source ~/setproxy.sh'
