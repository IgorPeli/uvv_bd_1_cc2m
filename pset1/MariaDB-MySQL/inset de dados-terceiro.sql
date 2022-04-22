-- INSERÇÃO DE DADOS NA TABELA FUNCIONARIO 


INSERT INTO uvv.funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
 
VALUES ('Jorge', 'E', 'Brito', '88866555576', 10/11/1937, 'Rua do Horto, 35, São Paulo', 'M', 55000, NULL, 1);

INSERT INTO uvv.funcionario
 (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
 
 VALUES
 ('Fernando', 'T', 'Wong', '33344555587', 08/12/1955, 'Rua da Lapa, 34, São Paulo, SP', 'M', 40000, '88866555576', 1),
 ('Jennifer', 'S', 'Souza', '98765432168', 20/06/1941, 'Av. Arthur de Lima, 54, Santo Andre, SP', 'F', 43000, '88866555576', 1);
 
 
 INSERT INTO uvv.funcionario
(primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento) 

VALUES
 ('João', 'B', 'Silva', '12345678966', 09/01/1965, 'Rua das Flores, 751, São Paulo, SP', 'M', 30000, '33344555587', 5),
 ('Alice', 'J', 'Zelaya', '99988777767', 19/01/1968, 'Rua Souza Lima, 35, Curitiba, PR', 'F', 25000, '98765432168', 4),
 ('Ronaldo', 'K', 'Lima', '66688444476', 15/09/196, 'Rua Reboucas, 65, Piracicaba, SP', 'M', 38000, '33344555587', 5),
 ('Joice', 'A', 'Leite', '45345345376', 31/07/1972, 'Av. Lucas Obes, 74, São Paulo, SP','F', 25000, '33344555587', 5),
 ('André', 'V', 'Pereira', '98798798733', 29/03/1969, 'Rua Timbira, 35, São Paulo, SP', 'M', 25000, '98765432168', 4);
 

 
 -- INSERÇÃO DE DADOS NA TABELA DEPARTAMENTO 
 
  insert INTO uvv.departamento 
 (nome_departamento, numero_departamento, cpf_gerente, data_inicio_gerente)
 
 VALUES
 ('Matriz', 1, '88866555576', 19/06/1981),
 ('Pesquisa', 4, '33344555587', 22/05/1988),
 ('Administração', 5, '98765432168', 01/01/1995);
 
 -- INSERÇÃO DE DADOS NA TABELA PROJETO 

 insert INTO uvv.projeto            
(nome_projeto, numero_projeto, local_projeto, numero_departamento)                                   
VALUES                             
('ProdutoX', 1, 'Santo André', 5), 
('ProdutoY', 2, 'Itu', 5),         
('ProdutoZ', 3, 'São Paulo', 5),   
('Informatização', 10, 'Mauá', 4), 
('Reorganização', 20, 'São Paulo', 1), 
('NovosBenefícios', 30, 'Mauá', 4);

-- INSERÇÃO DE DADOS NA TABELA LOCALIZACOES_DEPARTAMENTO 

insert INTO uvv.localizacoes_departamento
 (numero_departamento, local)
 
 VALUES
 (1, 'São Paulo'),
 (4, 'Maua'),
 (5, 'Santo Andre'),
 (5, 'Itu'),
 (5, 'São Paulo');

-- DÊ O COMANDO EM SQL ABAIXO PARA ACEITAR AS HORAS NULL
 
 ALTER TABLE trabalha_em MODIFY horas INT DEFAULT 0;

-- INSERÇÃO DE DADOS NA TABELA TRABALHA_EM 
 
  
 insert into uvv.trabalha_em
 (cpf_funcionario, numero_projeto, horas)
 
 VALUES
 ('12345678966', 1, 32.5),
 ('12345678966', 2, 7.5),
 ('66688444476', 3, 40.0),
 ('45345345376', 1, 20.0),
 ('45345345376', 2, 20.0),
 ('33344555587', 2, 10.0),
 ('33344555587', 3, 10.0),
 ('33344555587', 10, 10.),
 ('33344555587', 20, 10.0),
 ('99988777767', 30, 30.0),
 ('99988777767', 10, 10.0),
 ('98798798733', 10, 10.0),
 ('98798798733', 30, 5.0),
 ('98765432168', 30, 20.0),
 ('98765432168', 20, 15.0),
 ('88866555576', 20, NULL);
 
 -- INSERÇÃO DOS DADOS NA TABELA DEPENDENTE 
 
 insert INTO uvv.dependente
    (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
    
    VALUES
 ('33344555587', 'Alicia', 'F', 05/04/1986, 'Filha'),
 ('33344555587', 'Tiago', 'M', 25/10/1983, 'Filho'),
 ('33344555587', 'Janaina', 'F', 03/05/1958, 'Esposa'),
 ('98765432168', 'Antonio', 'M', 28/02/1942, 'Marido'),
 ('12345678966', 'Michael', 'M', 04/01/1988, 'Filho'),
 ('12345678966', 'Alicia', 'F', 30/12/1988, 'Filha'),
 ('12345678966', 'Elizabeth', 'F', 05/05/1967, 'Esposa');
 -- Fim da inserção de dados