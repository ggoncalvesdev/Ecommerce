--Cria tabela produto
CREATE TABLE produto(codigo_produto SERIAL PRIMARY KEY NOT NULL, 
					  nome VARCHAR(40) NOT NULL, 
					  descricao VARCHAR(250), 
					 quantidade_estoque NUMERIC NOT NULL,
					 data_fabricacao DATE NOT NULL,
					 valor_unitario NUMERIC NOT NULL,
					 codigo_categoria SERIAL NOT NULL,
					 codigo_funcionario INT NOT NULL,
					 FOREIGN KEY (codigo_funcionario) REFERENCES funcionario(codigo_funcionario)ON UPDATE CASCADE ON DELETE CASCADE,
					 FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo_categoria)ON UPDATE CASCADE ON DELETE CASCADE);

--Cria tabela categoria
CREATE TABLE categoria(codigo_categoria SERIAL PRIMARY KEY NOT NULL, 
					  nome_categoria VARCHAR(40) NOT NULL,
					  descricao_categoria VARCHAR(250) NOT NULL); 

--Cria tabela funcionario
CREATE TABLE funcionario(codigo_funcionario SERIAL PRIMARY KEY NOT NULL, 
						 nome_funcionario VARCHAR NOT NULL,
						 cpf VARCHAR NOT NULL); 

--Cria tabela	cliente				 
CREATE TABLE cliente(codigo_cliente SERIAL PRIMARY KEY NOT NULL, 
					  nome_completo VARCHAR(150) NOT NULL, 
					  nome_usuario VARCHAR(20) NOT NULL,
					  email VARCHAR(50) NOT NULL, 
					  cpf VARCHAR(14) NOT NULL ,
					  data_nascimento DATE NOT NULL,
					  numero_casa VARCHAR(30) NOT NULL,
					  complemento Varchar(80),
					  codigo_endereco INT NOT NULL,
					  FOREIGN KEY (codigo_endereco) REFERENCES endereco(codigo_endereco)ON UPDATE CASCADE ON DELETE CASCADE);

--Cria tabela endereco
CREATE TABLE endereco(codigo_endereco SERIAL PRIMARY KEY NOT NULL,
					  estado CHAR(2) NOT NULL,
					  cidade VARCHAR(50)NOT NULL,
	   				  bairro VARCHAR(50)NOT NULL,
					  rua VARCHAR(150)NOT NULL,
					  cep CHAR(20)NOT);

--Cria tabela pedido
CREATE TABLE pedido(codigo_pedido SERIAL PRIMARY KEY NOT NULL,
					data_pedido DATE NOT NULL, 
					status Varchar(20) NOT NULL,
					hora_pedido TIMESTAMP NOT NULL,
				    codigo_cliente SERIAL NOT NULL,
					FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo_cliente)ON UPDATE CASCADE ON DELETE CASCADE);
					 
--Cria tabela contem_item
CREATE TABLE contem_item (codigo_contem_item SERIAL PRIMARY KEY NOT NULL,
						  quantidade NUMERIC NOT NULL,
					 	  desconto NUMERIC,
					 	  codigo_produto SERIAL,
					 	  codigo_pedido SERIAL NOT NULL,
 					 	  FOREIGN KEY (codigo_produto) REFERENCES produto(codigo_produto)ON UPDATE CASCADE ON DELETE CASCADE,
					 	  FOREIGN KEY (codigo_pedido) REFERENCES pedido(codigo_pedido)ON UPDATE CASCADE ON DELETE CASCADE);

