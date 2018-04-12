pid_list=`ps aux | grep standalone/bin/redis | grep -v grep | awk '{ print $2 }'`

if [ -n "${pid_list}" ]; then
	ps aux | grep standalone/bin/redis | grep -v grep | awk '{ print $2 }' | xargs kill -9
fi

./cleanup.sh
