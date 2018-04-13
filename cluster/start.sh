./stop.sh

./cleanup.sh

SERVER_CMD="../../cluster/bin/redis-server"
REDIS_CFG="./redis_cluster.conf"
SERVER_IP="172.27.0.5"

cd node1
nohup ${SERVER_CMD} ${REDIS_CFG} &
cd -

cd node2
nohup ${SERVER_CMD} ${REDIS_CFG} &
cd -

cd node3
nohup ${SERVER_CMD} ${REDIS_CFG} &
cd -

./bin/redis-trib.rb create ${SERVER_IP}:7000 ${SERVER_IP}:7001 ${SERVER_IP}:7002 <<EOF
yes
EOF
