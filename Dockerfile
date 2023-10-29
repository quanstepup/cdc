FROM debezium/connect
ENV KAFKA_CONNECT_PG_DIR=/kafka/connect/debezium-connector-postgres
ENV KAFKA_CONNECT_DIR=/kafka/connect
ARG POSTGRES_VERSION=42.5.1
ARG MYSQL_VERSION=8.0.32
ARG KAFKA_JDBC_VERSION=10.7.4

# Deploy PostgreSQL JDBC Driver
RUN cd /kafka/libs && curl -sO https://jdbc.postgresql.org/download/postgresql-$POSTGRES_VERSION.jar

# Deploy Kafka Connect JDBC
RUN cd $KAFKA_CONNECT_PG_DIR &&\
        curl -sO https://packages.confluent.io/maven/io/confluent/kafka-connect-jdbc/$KAFKA_JDBC_VERSION/kafka-connect-jdbc-$KAFKA_JDBC_VERSION.jar
