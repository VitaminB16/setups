### SHORTCUTS START ###
alias pip='pip3'
alias python='python3'
alias c='printf "\033c"'
alias l='gls -la --group-directories-first --color=auto'
alias ls='gls -la --group-directories-first --color=auto'
alias la='gls -la --group-directories-first --color=auto'

alias gpl='git pull'
alias glp='git pull'
alias pgl='git pull'
alias plg='git pull'
alias lpg='git pull'
alias lgp='git pull'

alias gps='git push'

alias gr='git reset'
alias grh='git reset --hard'

alias ugac='unset GOOGLE_APPLICATION_CREDENTIALS'
alias gal='gcloud auth login'
alias gaal='gcloud auth application-default login'
alias gaaal='ugac ; gal ; gaal'
alias gaaaal='gaaal'
alias gaaaaal='gaaal'
alias gaaaaaal='gaaal'
alias gaaaaaaal='gaaal'
alias gaaaaaaaal='gaaal'
alias gaaaaaaaaal='gaaal'
alias gaaaaaaaaaal='gaaal'
alias gaaaaaaaaaaal='gaaal'

alias gcsp='gcloud config set project'
alias gcps='gcloud config set project'
alias gspc='gcloud config set project'
alias gscp='gcloud config set project'
alias gpsc='gcloud config set project'
alias gpcs='gcloud config set project'

alias pcsg='gcloud config set project'
alias pcgs='gcloud config set project'
alias psgc='gcloud config set project'
alias pscg='gcloud config set project'
alias pgsc='gcloud config set project'
alias pgcs='gcloud config set project'

alias scgp='gcloud config set project'
alias scpg='gcloud config set project'
alias sgpc='gcloud config set project'
alias sgcp='gcloud config set project'
alias spgc='gcloud config set project'
alias spcg='gcloud config set project'

alias cgsp='gcloud config set project'
alias cgps='gcloud config set project'
alias cspg='gcloud config set project'
alias csgp='gcloud config set project'
alias cpsg='gcloud config set project'
alias cpgs='gcloud config set project'

alias po='poetry shell ; poetry install'

alias p='python main.py'

alias poetry-clear='poetry cache clear --all .'
alias pclr='poetry cache clear --all .'
alias pcl='poetry cache clear --all .'

alias pa='poetry add'

export TERM="xterm-color" 
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '


# Copy the .bash_profile file to .bashrc, .zhrc and .zprofile
cp ~/.bash_profile ~/.bashrc
cp ~/.bash_profile ~/.zshrc
cp ~/.bash_profile ~/.zprofile
### SHORTCUTS END ###
