CREATE KEYSPACE "my_status"
  WITH REPLICATION = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
  };
