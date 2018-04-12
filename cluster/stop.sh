pid_list=`ps aux | grep cluster/bin/redis-server | grep -v grep | awk '{ print $2 }'`

if [ -n "${pid_list}" ]; then
	ps aux | grep cluster/bin/redis-server | grep -v grep | awk '{ print $2 }' | xargs kill -9
fi
