#vim
alias vim="nvim"
alias svim="sudo -E -s nvim"

#docker aliases
alias dockercup="docker compose up -d"
alias dockerlog="docker compose logs -f"
alias dockerstopall="docker stop $(docker ps -q)"
alias dockerrmall="docker rm -f $(docker ps -a -q)"
