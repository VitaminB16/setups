alias pip='pip3'
alias python='python3'
alias c='printf "\033c"'
alias l='gls -la --group-directories-first --color=auto'
alias ls='gls -la --group-directories-first --color=auto'
alias la='gls -la --group-directories-first --color=auto'
alias gpl='git pull'
alias gps='git push'
alias gal='gcloud auth login'
alias gaal='gcloud auth application-default login'
alias gcsp='gcloud config set project'
alias po='poetry shell ; poetry install'
alias p='python main.py'
alias poetry-clear='poetry cache clear --all .'
alias pcl='poetry cache clear --all .'
alias pa='poetry add'
export TERM="xterm-color"
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# Copy the .bash_profile file to .bashrc, .zhrc and .zprofile
cp ~/.bash_profile ~/.bashrc
cp ~/.bash_profile ~/.zshrc
cp ~/.bash_profile ~/.zprofile
