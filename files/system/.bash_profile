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
alias gcm='git checkout master'
alias gc='git checkout'

alias gr='git reset'
alias grh='git reset --hard'
alias gg='gcm ; gpl ; c'
alias gplc='git pull; c'

alias drs='dbt run -s'
alias dsr='dbt run -s'
alias srd='dbt run -s'
alias sdr='dbt run -s'
alias rsd='dbt run -s'
alias rds='dbt run -s'

alias drsf='dbt run -fs'
alias dsrf='dbt run -fs'
alias srdf='dbt run -fs'
alias sdrf='dbt run -fs'
alias rsdf='dbt run -fs'
alias rdsf='dbt run -fs'
alias drfs='dbt run -fs'
alias dsfr='dbt run -fs'
alias srfd='dbt run -fs'
alias sdfr='dbt run -fs'
alias rsfd='dbt run -fs'
alias rdfs='dbt run -fs'
alias dfrs='dbt run -fs'
alias dfsr='dbt run -fs'
alias sfrd='dbt run -fs'
alias sfdr='dbt run -fs'
alias rfsd='dbt run -fs'
alias rfds='dbt run -fs'
alias fdrs='dbt run -fs'
alias fdsr='dbt run -fs'
alias fsrd='dbt run -fs'
alias fsdr='dbt run -fs'
alias frsd='dbt run -fs'
alias frds='dbt run -fs'

alias ugac='unset GOOGLE_APPLICATION_CREDENTIALS'
alias gal='gcloud auth login'
#alias gaal='gcloud auth application-default login'
function gaal() {
    gcloud auth application-default login
    if [ -n "$1" ]; then
        gcloud config set project "$1"
    fi
}
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
alias de='deactivate'
alias py='python'
alias p='python main.py'

alias poetry-clear='poetry cache clear --all .'
alias pclr='poetry cache clear --all .'
alias pcl='poetry cache clear --all .'

alias pa='poetry add'

alias sf='sqlfluff fix'
alias sl='sqlfluff lint'

export TERM="xterm-color" 
export VIRTUAL_ENV_DISABLE_PROMPT=1

mypwd() {
  # Start with the current directory (PWD)
  # Replace $HOME with ~
  local shown_path="${PWD/#$HOME}"

  # If there's "/GitHub" in there, remove it (including the leading slash)
  shown_path="${shown_path/\/GitHub/}"

  # Output the final path
  echo "$shown_path"
}
shortenv() {
  if [ -n "$VIRTUAL_ENV" ]; then
    # Example: $VIRTUAL_ENV = /Users/<user>/GitHub/data-platform/dbt/.venv
    # Grab the final path component, e.g. ".venv"
    local venv_dir
    venv_dir="$(basename "$VIRTUAL_ENV")"

    # Grab the parent folder's name, e.g. "dbt"
    local parent_dir
    parent_dir="$(basename "$(dirname "$VIRTUAL_ENV")")"

    # Combine them, e.g. "dbt/.venv"
    local env_display="${parent_dir}"

    # (Optionally) Truncate to first 20 characters, if you want to limit length
    # if [ ${#env_display} -gt 20 ]; then
    #   env_display="${env_display:0:20}"
    # fi


    if [ -n "$POETRY_ACTIVE" ]; then
      # Show parentheses if Poetry is truly active
      echo "(${env_display}) "
    else
      # Otherwise, just show the name (no parentheses)
      echo "${env_display} "
    fi
  fi
}
export PS1='$(shortenv)\[\e[0;33m\]a\[\e[0m\]@\[\e[0;32m\]A\[\e[0m\]:\[\e[0;34m\]$(mypwd)\[\e[0m\]\$ '

alias mem="ps -caxm -orss= | awk '{ sum += \$1 } END { print int(sum/1024) \" MiB\" }'"
mem_watch() {
  c
  while true; do
    # Capture the memory usage output from the 'mem' alias
    output=$(mem)
    # Move the cursor to the beginning of the line, clear it, and print the new output
    printf "\r\033[K%s" "$output"
    sleep 0.1
  done
  # Optionally, print a newline on exit
  echo
}

function past_commit() {
    export THE_TIME=$1
    GIT_AUTHOR_DATE=$THE_TIME GIT_COMMITTER_DATE=$THE_TIME git commit -m "$2"
}
function docker_run() {
    docker run --entrypoint /bin/bash -it $1
}
function get_mid() {
    /Users/artemiynosov/GitHub/scripts/get_merchant_id/get_merchant_id $1
}

# Example function name: docker_run_gar
# Usage: docker_run_gar europe-west2-docker.pkg.dev/feefo-v4-cloud-build/docker/data-platform-ds-to-bq/main:da25232
function docker_run_gar() {
    # First argument is the full GAR image URI, e.g.
    # europe-west2-docker.pkg.dev/feefo-v4-cloud-build/docker/data-platform-ds-to-bq/main:da25232
    local image_uri="$1"

    # (Optional) Pull the image explicitly. Docker run will also pull if not present.
    docker pull "$image_uri"

    # Run the container with a bash entrypoint interactively
    docker run --entrypoint /bin/bash -it "$image_uri"
}




# Copy the .bash_profile file to .bashrc, .zhrc and .zprofile
cp ~/.bash_profile ~/.bashrc
cp ~/.bash_profile ~/.zshrc
cp ~/.bash_profile ~/.zprofile
### SHORTCUTS END ###
