alias startmongo='${MONGO}/bin/mongod --logpath ${PROJECT}/db/logs/output.log --dbpath ${PROJECT}/db/store &'
alias killmongo='ps auxwww | grep mongod | grep -v grep | awk '\''{ print$2 }'\'' | xargs kill -9'
alias stopmongo='ps auxwww | grep mongod | grep -v grep | awk '\''{ print$2 }'\'' | xargs kill '
alias statusmongo='ps auxwww | grep mongod | grep -v grep'
alias initenv='. ${WEB}/env.sh'
alias bootenv='cd ${WEB}; python ../core/cobalt/config/bootstrap/bootstrap.py --COBALT_ENV_NAME=localdev'
alias startenv='cd ${WEB}; python manage.py runserver &'
alias logmongo='tail -100f ${PROJECT}/db/logs/output.log'
