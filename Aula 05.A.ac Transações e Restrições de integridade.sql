-- Questão 01. Crie uma tabela pessoa com os campos ID, nome, sobrenome e idade. Crie uma cláusula de checagem para o campo idade, impedindo que valores menores que 0 sejam adicionados. 
create table pessoa (
ID char(10) primary key,
nome char(40),
sobrenome char(40),
idade numeric(2,0) check (idade > 0));

-- Questão 02. Altere a tabela pessoa e crie uma restrição utilizando a especificação unique ( A1, A2, …, Am) para os campos ID, nome e sobrenome.
ALTER TABLE pessoa
ADD CONSTRAINT UC_Person UNIQUE (ID, nome, sobrenome);

-- Questão 03. Altere a coluna idade da tabela pessoa e garanta que ela não receba valores nulos.
ALTER TABLE pessoa ALTER COLUMN idade numeric(2,0) NOT NULL;


-- Questão 04. Crie uma tabela endereco com os campos ID e rua. Adicione o campo endereco na tabela pessoa e crie uma integridade referencial a partir deste campo com a tabela endereco.
create table endereco (
ID char(10) primary key,
rua char(40));

ALTER TABLE pessoa ADD endereco char(10) REFERENCES endereco;




