-- Criando um usuário
 CREATE USER igor
 identified BY '123456';
 SHOW GRANTS FOR igor;
GRANT ALTER, SHOW VIEW, SHOW DATABASES, SELECT, PROCESS, EXECUTE, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TABLESPACE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, BINLOG ADMIN, BINLOG REPLAY, CONNECTION ADMIN, CREATE USER, FEDERATED ADMIN, FILE, LOCK TABLES, READ_ONLY ADMIN, RELOAD, REPLICATION MASTER ADMIN, REPLICATION SLAVE, REPLICATION SLAVE ADMIN, SET USER, SHUTDOWN, SUPER  ON *.* TO 'igor'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES; 
-- Criando o database
 CREATE DATABASE uvv; 
 -- Não existe schema, somente database


