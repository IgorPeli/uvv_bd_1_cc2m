CREATE TABLE uvv.funcionario (
    cpf CHAR (11) NOT NULL,
    primeiro_nome VARCHAR(15) NOT NULL,
    nome_meio CHAR (1),
    ultimo_nome VARCHAR(15) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR (50),
    sexo CHAR (1) check (sexo = 'F' or sexo = 'M'),
    -- Constraint check impedindo qualquer valor além de M e F
    salario DECIMAL(10,2) check (salario>0),
    -- A constraint check impede que o salário seja negativo
    cpf_supervisor CHAR(11),
    numero_departamento INT default 1 NOT NULL,
    -- 1 é o numero departamento padrão por conta de ser a matriz, e para poder inserir os dados iniciais de departamento e funcionário.
    PRIMARY KEY (cpf),
    FOREIGN KEY (cpf_supervisor) REFERENCES funcionario (cpf)
);
-- CRIAÇÃO DA TABELA com as informações dos DEPENDENTES 

CREATE TABLE uvv.dependente (
   cpf_funcionario CHAR (11),
   nome_dependente VARCHAR (15),
   sexo CHAR (1) check (sexo = 'F' or sexo = 'M'),
   data_nascimento DATE,
   parentesco VARCHAR (15),
   PRIMARY KEY (cpf_funcionario, nome_dependente),
   FOREIGN KEY (cpf_funcionario) REFERENCES funcionario (cpf)
);

-- CRIAÇÃO DA TABELA com as informações dos DEPARTAMENTO 

CREATE TABLE uvv.departamento (
   numero_departamento INT,
   nome_departamento VARCHAR (15) NOT NULL,
   cpf_gerente CHAR (11) NOT null,
   data_inicio_gerente DATE,
   PRIMARY KEY (numero_departamento),
   FOREIGN KEY (cpf_gerente) REFERENCES funcionario (cpf),
   UNIQUE (nome_departamento)
);

-- CRIAÇÃO DA TABELA com as informações dos LOCALIZACOES dos DEPARTAMENTO 

CREATE TABLE uvv.localizacoes_departamento(
  numero_departamento INT,
  local VARCHAR (11),
  PRIMARY KEY (numero_departamento, LOCAL),
  FOREIGN KEY (numero_departamento) REFERENCES departamento (numero_departamento)
);

-- CRIAÇÃO DA TABELA com as informações dos PROJETOS

CREATE TABLE uvv.projeto (
numero_projeto INT,
nome_projeto VARCHAR (15),
local_projeto VARCHAR (15),
numero_departamento INT,
PRIMARY KEY (numero_projeto),
FOREIGN KEY (numero_departamento) REFERENCES departamento (numero_departamento),
UNIQUE (nome_projeto)
);

-- CRIAÇÃO DA TABELA com as informações de onde as pessoas trabalham
CREATE TABLE uvv.trabalha_em(
cpf_funcionario CHAR (11),
numero_projeto INT,
horas DECIMAL (3,1) check (horas>0),
PRIMARY KEY (cpf_funcionario, numero_projeto),
FOREIGN KEY (cpf_funcionario) REFERENCES funcionario (cpf),
FOREIGN KEY (numero_projeto) REFERENCES projeto (numero_projeto)
); 
