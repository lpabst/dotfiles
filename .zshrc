export CODE_DIR="/Users/lorenpabst/Desktop/code"

# vpn
alias vpnUp="wg-quick up wg0"
alias vpnDown="wg-quick down wg0"
# conf file located at /usr/local/etc/wireguard/wg0.conf

alias code="cd ~/Desktop/code"
alias bup="code && cd api/backend && yarn start-dev"

gk() {
  git checkout master
  git pull origin master
  git fetch
  git branch --merged master | grep -ve \"master\" | xargs git branch -d
  git branch
}

gb() {
  git branch
}

gs() {
  git status
}

gca() {
  git add .
  git commit -m "$1"
}

gcpa() {
  git add .
  git commit -m "$1"
  git push origin $(git rev-parse --abbrev-ref HEAD)
}

complete -o nospace -C /opt/homebrew/bin/terraform terraform
autoload -Uz compinit && compinit

killport() {
  kill -9 $(lsof -ti:$1)
}
