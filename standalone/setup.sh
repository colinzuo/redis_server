REDIS_PORT1=8000
REDIS_PORT2=8001
REDIS_PORT3=8002
SENTINEL_PORT1=9000
SENTINEL_PORT2=9001
SENTINEL_PORT3=9002
MASTER_IP="172.27.0.5"

cd node1
cp redis_standalone.conf.template redis_standalone.conf
sed -i "s/REDIS_PORT1/${REDIS_PORT1}/g" redis_standalone.conf

cp sentinel.conf.template sentinel.conf
sed -i "s/SENTINEL_PORT1/${SENTINEL_PORT1}/g" sentinel.conf
sed -i "s/MASTER_IP/${MASTER_IP}/g" sentinel.conf
sed -i "s/REDIS_PORT1/${REDIS_PORT1}/g" sentinel.conf
cd -

cd node2
cp redis_standalone.conf.template redis_standalone.conf
sed -i "s/REDIS_PORT2/${REDIS_PORT2}/g" redis_standalone.conf
sed -i "s/MASTER_IP/${MASTER_IP}/g" redis_standalone.conf
sed -i "s/REDIS_PORT1/${REDIS_PORT1}/g" redis_standalone.conf

cp sentinel.conf.template sentinel.conf
sed -i "s/SENTINEL_PORT2/${SENTINEL_PORT2}/g" sentinel.conf
sed -i "s/MASTER_IP/${MASTER_IP}/g" sentinel.conf
sed -i "s/REDIS_PORT1/${REDIS_PORT1}/g" sentinel.conf
cd -

cd node3
cp redis_standalone.conf.template redis_standalone.conf
sed -i "s/REDIS_PORT3/${REDIS_PORT3}/g" redis_standalone.conf
sed -i "s/MASTER_IP/${MASTER_IP}/g" redis_standalone.conf
sed -i "s/REDIS_PORT1/${REDIS_PORT1}/g" redis_standalone.conf

cp sentinel.conf.template sentinel.conf
sed -i "s/SENTINEL_PORT3/${SENTINEL_PORT3}/g" sentinel.conf
sed -i "s/MASTER_IP/${MASTER_IP}/g" sentinel.conf
sed -i "s/REDIS_PORT1/${REDIS_PORT1}/g" sentinel.conf
cd -
