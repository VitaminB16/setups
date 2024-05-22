export PATH=/opt/homebrew/bin:$PATH
alias pip='pip3'
alias python='python3'
alias c='printf "\033c"'
alias l='gls -la --group-directories-first --color=auto'
alias ls='gls -la --group-directories-first --color=auto'
alias la='gls -la --group-directories-first --color=auto'
alias po='poetry shell && poetry install'
alias p='python main.py'
alias poetry_clear='poetry cache clear --all .'
export TERM="xterm-color"
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

# Copy the .bash_profile file to .bashrc, .zhrc and .zprofile
cp ~/.bash_profile ~/.bashrc
cp ~/.bash_profile ~/.zshrc
cp ~/.bash_profile ~/.zprofile
