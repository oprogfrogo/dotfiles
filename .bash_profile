alias ll='ls -la'
alias ma='mate'
alias kill_dock='killall -KILL Dock'
alias kill_java='kill -9 `ps awx | grep java`'

alias tunnels_office='~/start_ldap_tunnel.sh "office" & ~/start_reportsdb_tunnel.sh "office" & ~/start_proddb_tunnel.sh "office" & ~/start_acctdb_tunnel.sh "office" & ~/start_epochstatsdb_tunnel.sh "office" &'
alias tunnels_remote='~/start_ldap_tunnel.sh "remote" & ~/start_reportsdb_tunnel.sh "remote" & ~/start_proddb_tunnel.sh "remote" & ~/start_acctdb_tunnel.sh "remote" &'
alias npmtest='npm run lint; npm test'
alias labd='node-debug node_modules/.bin/lab -M 0 -m 0' #labd -g 'should fail to render when failing on fetchShortcode'
alias pep='ssh slee@epochpep.tomkittens.com'
alias gulpmon='gulp;nodemon'
alias nm='nodemon -e js,hbs,hs,css'
alias bugger="node-inspector --web-port=9090 --no-preload"
alias buggy="nodemon --debug"
alias runredis='redis-server /usr/local/etc/redis.conf &'
alias stopredis='redis-cli shutdown'
alias nodeit='killall node; killall java; sh ~/node.sh'
alias killit='killall node; killall java'
alias findlinks='ls -lR ./node_modules | grep ^l'
alias dockerstart='docker-compose up -d'
alias dockerstop='docker-compose stop'
alias dockerstatus='docker-compose ps'

#SSH
alias epbox='ssh -i ~/.ssh/epbox/id_rsa slee@epbox.tomkittens.com'
alias bast='ssh slee@bast.tomkittens.com'
alias epochpep='ssh slee@epochpep.tomkittens.com'
alias pkproxy='ssh slee@68.71.103.86'

#Mysql
alias mysql='/usr/local/Cellar/mysql/5.6.27/bin/mysql'
alias start_mysql='mysql.server start'
alias stop_mysql='mysql.server stop'
alias mysqladmin='/usr/local/Cellar/mysql/5.6.27/bin/mysqladmin'
alias mysqldump='/usr/local/Cellar/mysql/5.6.27/bin/mysqldump'
alias db7='mysql -h 127.0.0.1 -P13306 -u slee_tunnel -p"blu3r1bb0nbutt3r"'
alias epstatsdb='mysql -h 127.0.0.1 -u slee -P33306 -p"JHJHFGsd&&ffakd"'

#Mysql5
alias mysql5='/opt/local/lib/mysql5/bin/mysql'
alias mysql5check='/opt/local/lib/mysql5/bin/mysqlcheck'
alias mysql5_stop='sudo /opt/local/bin/mysqladmin5 shutdown'
alias mysql5_start='sudo /opt/local/bin/mysqld_safe5 &'
alias mysql5admin='/opt/local/bin/mysqladmin'
alias mysql5dump='/opt/local/bin/mysqldump'

#Server
alias apachectl='sudo /usr/sbin/apachectl'
alias memcache_start='memcached -d -m 2048 -M -p 11211'
alias webkit='WebKit/WebKitTools/Scripts/run-safari'

#Rails
alias ruby187='rvm use ruby-1.8.7-p374 --default'
alias ruby212='rvm use ruby-2.1.2 --default'
alias ruby213='rvm use ruby-2.1.3 --default'
alias ruby215='rvm use ruby-2.1.5 --default'
alias ruby216='rvm use ruby-2.1.6 --default'

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1='\u@\w\$ '

export RBENV_ROOT=/usr/local/rbenv
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

#Java
export JAVA_HOME=$(/usr/libexec/java_home)

#PG
export PG_USER=slee
export PG_PASSWORD=''

#Mysql Creds
#export MYSQL_USER='127.0.0.1'
#export MYSQL_USER='slee_tunnel'
#export MYSQL_PASSWORD='blu3r1bb0nbutt3r'
export KNEX_DEBUG_LOG=1;

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

#Captcha
export RECAPTCHA_PUBLIC_KEY='6Ld7LO0SAAAAALB73J6BMmnmRATPV7EijhPSfP3n'
export RECAPTCHA_PRIVATE_KEY='6Ld7LO0SAAAAAJ9PdQT056untSgjE4KTWrnCfGQC'

export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
