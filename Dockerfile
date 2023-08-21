FROM debezium/connect:latest

# Copy JDBC driver files
COPY postgresql-42.6.0.jar /kafka/libs/
COPY kafka-connect-jdbc-10.7.4.jar /kafka/connect/kafka-connect-jdbc/