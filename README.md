# redis_server
Sample cluster and standalone setup

# cluster
#### CentOS has Ruby 2.0.0 by default, but redis-trib needs Ruby >= 2.2.2
  Follow http://06peng.com/archives/172 to install Ruby 2.3.3 as redis-trib needs it <br>
  - yum install gem
  - gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
  - curl -L get.rvm.io | bash -s stable
  - source /usr/local/rvm/scripts/rvm
  - rvm install 2.3.3
  - rvm use 2.3.3 --default
  - rvm remove 2.0.0
  - gem install redis

By default it will start on ports 7000, 7001, 7002 <br>
modify node[1|2|3]/redis_cluster.conf to use other ports <br>

Scripts Usage:
  - start.sh    start the cluster
  - stop.sh     stop the cluster, kill the server processes
  - cleanup.sh  cleanup files such as node.conf

# standalone
It will start 3 redis servers, 3 redis sentinels <br>
Similar to cluster except there is a configuration file named setup.sh, <br>
which can be used to set ports and ip used <br>

Script Usage: <br>
  - setup.sh    set ports and ip
  - see cluster scripts usage
