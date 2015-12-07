-- Drop the keyspace if it exists
DROP KEYSPACE IF EXISTS my_cassandra_keyspace;

-- Create our keyspace
CREATE KEYSPACE my_cassandra_keyspace WITH replication =
  { 'class': 'SimpleStrategy', 'replication_factor': 1 };

-- Use the keyspace
USE my_cassandra_keyspace;

-- Table: session_events
CREATE COLUMNFAMILY user_sessions (
  session_id text,
  ts timestamp,
  path text,
  PRIMARY KEY(session_id, ts)
);
