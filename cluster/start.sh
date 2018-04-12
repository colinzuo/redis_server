./stop.sh

SERVER_CMD="../../cluster/bin/redis-server"
REDIS_CFG="./redis_cluster.conf"

cd node1
nohup ${SERVER_CMD} ${REDIS_CFG} &
cd -

cd node2
nohup ${SERVER_CMD} ${REDIS_CFG} &
cd -

cd node3
nohup ${SERVER_CMD} ${REDIS_CFG} &
cd -
