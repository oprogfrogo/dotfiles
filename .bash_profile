alias ll='ls -la'
alias ma='mate'
alias kill_dock='killall -KILL Dock'
alias kill_java='kill -9 `ps awx | grep java`'

alias npmtest='npm run lint; npm test'
alias labd='node-debug node_modules/.bin/lab -M 0 -m 0' #labd -g 'should fail to render when failing on fetchShortcode'
alias pep='ssh slee@epochpep.tomkittens.com'
alias gulpmon='gulp;nodemon'
alias nm='nodemon'

#Server
alias apachectl='sudo /usr/sbin/apachectl'
alias memcache_start='memcached -d -m 2048 -M -p 11211'
alias webkit='WebKit/WebKitTools/Scripts/run-safari'

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1='\u@\w\$ '


#Docker
alias dm-list='docker-machine ls'
dm-env() {
    eval "$(docker-machine env "$1")"
}
dm-stop() {
    docker-machine stop $1
}
dm-start() {
    docker-machine start $1 && dm-env $1
}
