FROM debezium/connect:latest

# Copy JDBC driver files
COPY mysql-connector-j-8.1.0.jar /kafka/libs/
COPY mysql-connector-j-8.1.0.jar /kafka/connect/kafka-connect-jdbc/
COPY kafka-connect-jdbc-10.7.4.jar /kafka/connect/kafka-connect-jdbc/