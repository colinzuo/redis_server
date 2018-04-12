./stop.sh

SERVER_CMD="../../standalone/bin/redis-server"
SENTINEL_CMD="../../standalone/bin/redis-sentinel"
REDIS_CFG="./redis_standalone.conf"
SENTINEL_CFG="./sentinel.conf"

cd node1
nohup ${SERVER_CMD} ${REDIS_CFG} &
nohup ${SENTINEL_CMD} ${SENTINEL_CFG} &
cd -

cd node2
nohup ${SERVER_CMD} ${REDIS_CFG} &
nohup ${SENTINEL_CMD} ${SENTINEL_CFG} &
cd -

cd node3
nohup ${SERVER_CMD} ${REDIS_CFG} &
nohup ${SENTINEL_CMD} ${SENTINEL_CFG} &
cd -
