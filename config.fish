eval (direnv hook fish)

rvm default

alias a="alias"
alias aq="alias | grep" 

alias bu="bundle"

## BREW
alias brci="brew cask install"
alias bri="brew install"
alias brsl="brew services list"
alias brss="brew services start"
alias brsx="brew services stop"
alias bru="brew uninstall"


## CODE
alias c="code"
alias ca="code ."

alias d="cd"
alias dd="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

## ELIXIR
alias e="elixir"
alias emt="mix test"

## FISH
alias f="fish"
alias fcf="vim ~/.config/fish/config.fish"

## GIT
alias g="git"
alias ga="git add"
alias gaa="git add ."
alias gb="git branch"
alias gs="git status"
alias gd="git diff"
alias gci="git checkout"
alias gcm="git commit -m"
alias gcob="git checkout -b"
alias gcod="git checkout develop"
alias gld="git log --graph --oneline --decorate --all"
alias gmd="git merge develop"
alias gn="git symbolic-ref HEAD --short"
alias gp="git pull"
alias gprd="git pull; and rake db:migrate"
alias gscm="env CI=1 git commit -m"
alias gkrcm="env SKIP=Rubocop git commit -m"
alias gu="git push"
alias guf="git push --set-upstream origin master"
alias git="hub"

## KANTOX

alias k="cd ~/Documents/kantox-flow"
alias kdo="./docker_run.sh bash"

# kantox translations
alias ktrans="curl 'https://www.localeapp.com/projects/7541/downloads/all.zip' -H 'Cookie: _hablo_session=WGFQaW1QaEJ5K1BvSDFiOURGMm90QTBRN3VpRWRrVUlQTWpnMCtvY2VzN0taeGo0SzM5cDhZWkdkcDJIaWZ6UElCbVVvY0wvMWJsOW5oQ05aRk8zVUZEV3lzb1VobDZxODY3c1F5NnRoMEpsM3VZMlhSKzVHQ0g0NlhXeXJEdWtjcFdSZjhITzZGeEJOZzFEOGRwMjE5YklsMEdhK1duVFFjb3ZJbXRIMU9aa2RRZ1JtOXZNTDhjN3lnNlY0aFJsVlIwWExmM3ppYVRyNU9XU05sMWYwaTJPNVBsYXRON2o3bkhkTHA5RTdUc2ZOaEZnT1NhYzZNN3FwaDZTTmh6K1ZqWU9hWlhWZDlIeDg2T2hSWUNGM0VhQVBNQnpUYUl2RWVVb2dwODNFSkRPYlg4Y1BrYko0NzMxV1ZmSFovTlI5dGtPSXhsY1VUZm5ob0pzTGNaSlFnPT0tLUVzalBDZUwvMld0OFRKaUpaTjJmN2c9PQ%3D%3D--5f7aab4adc5f4cda387b5714a33d26ffa0f899e7' > all.zip; and unzip all.zip; and rm all.zip; and mv en.yml config/locales; and mv de.yml config/locales; and mv fr.yml config/locales; and mv it.yml config/locales; and mv es.yml config/locales; and rake i18n:js:export"

alias m="mkdir"

## OPENS

alias O="open -a 'Google Chrome'"
alias Og="O 'http://www.gmail.com'"
alias Oj="O 'https://kantox.atlassian.net/secure/Dashboard.jspa'"
alias Ol="O 'http://localhost:3000'"
alias Oh="O 'http://www.github.com'"
alias Ohb="O 'https://github.com/kantox/kantox-flow/branches'"

alias oc="open -a 'Visual Studio Code'"
alias of="open -a 'Finder'"
alias os="open -a 'Slack'"
alias oy="open -a 'Spotify'"
alias oq="open -a 'Sequel Pro'"

alias pg="ps aux | grep"
alias pi="pip3 install"
alias p3="python3"

## RAILS
alias rc="rails c"
alias rs="rails s"
alias rrd="rake db:migrate"
alias r="rake"
alias rt="rspec"

alias s="sidekiq"
alias sc="slack-cli"
alias su="sudo"

## SPOTIFY
alias S="spotify"
alias SS="spotify status"
alias Sl="S prev"
alias Sn="S next"
alias Sp="S play"
alias Spa="S play album"
alias Spl="S play list"
alias Spr="S play artist"
alias Sr="S replay"
alias Ss="S stop"
alias St="S toggle"
alias Str="S toggle repeat"
alias Sts="S toggle shuffle"
alias Sv="S vol"
alias Svu="S vol up"
alias Svd="S vol down"
alias Sx="S pause"

## VIM
alias v="vim"
alias vcf="vim ~/.vimrc"

## FUNCTIONS

function Ojb
  O "https://kantox.atlassian.net/browse/$argv"
end

function Ogb
  O "https://github.com/kantox/kantox-flow/tree/$argv"
end

function mm
  m $argv; and cd $argv
end

function dot 
  cp ~/.vimrc ~/Documents/dotfiles; and cp ~/.gitignore-global ~/Documents/dotfiles; and cp ~/.config/fish/config.fish ~/Documents/dotfiles; and cp ~/.irbrc ~/Documents/dotfiles; and cd ~/Documents/dotfiles; and gaa; and gcm "dotfiles commit"; and gu 
end

function gwm
  git add .;and git commit -m $argv; and git push
end
