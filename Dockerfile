FROM cassandra
RUN mkdir /data
COPY data/initial-seed.cql /data/
