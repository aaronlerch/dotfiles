alias ll="ls -al"
alias agi="ag -i"
alias creep="say -v whisper"
alias blink1="blink1-tool"
alias blink="blink1-tool"

#alias scala='docker run -it --rm -v `pwd`:/usr/src -w /usr/src williamyeh/scala'
#alias sbt='docker run -it --rm -v `pwd`:/app -w /app williamyeh/sbt'
#alias sbt='docker run -it --rm -v `pwd`:/app -w /app latestsbt'
alias scala='docker run -it --rm frolvlad/alpine-scala scala'

alias webhere='docker run -it --rm -v `pwd`:/usr/share/nginx/html:ro -p 8080:80 nginx'

alias doco="docker-compose"
alias docos="docker-compose -f docker-compose.yml -f docker-compose-sync.yml"
alias docor="docker-compose run"
alias docorw="docker-compose run --rm web"
alias docorwb="docker-compose run --rm web bundle exec"
alias docotest="docorwb rspec"
alias dococon="docorwb rails c"
alias dococop="docorwb rubocop"
alias docolog="doco logs --tail=100 -f"
alias docoblog="docolog web"
alias docodebug="docker-compose run --rm --service-ports web bundle exec rdebug-ide --port 1234 --host 0.0.0.0 --dispatcher-port 26162 -- bin/rails server -b 0.0.0.0 -p 3000"

alias yarn='newt exec yarn'
alias npm='newt exec npm'

alias gam7='$HOME/bin/gam7/gam'
