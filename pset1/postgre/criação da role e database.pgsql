-- Primeira coisa a se fazer

-- criação do usuário, administrador do banco de dados.
create role igor WITH
login
superuser
createdb
createrole
inherit
noreplication
connection limit -1
PASSWORD '123456';
COMMENT ON ROLE "igor" IS 'Usuário "Dono" do banco de dados. Pode criar, editar e apagar quaisquer tabelas, schemas e até o próprio banco de dados.';


create database uvv
WITH
OWNER = "igor"
TEMPLATE = template0
ENCODING = 'UTF8'
LC_COLLATE = 'pt_BR.UTF-8'
LC_CTYPE = 'pt_BR.UTF-8'
CONNECTION LIMIT = -1;
