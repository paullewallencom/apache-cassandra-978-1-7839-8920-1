$ cd Downloads
$ curl -O http://downloads.datastax.com/community/dsc-cassandra-2.0.7-bin.tar.gz
$ sudo mkdir -p /opt
$ cd /opt
$ sudo tar -xvf ~/Downloads/dsc-cassandra-2.0.7-bin.tar.gz
$ sudo ln -s /opt/dsc-cassandra-2.0.7/bin/cqlsh /usr/local/bin/
$ sudo dsc-cassandra-2.0.7/bin/cassandra
