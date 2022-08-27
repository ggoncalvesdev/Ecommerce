--Endereço
INSERT INTO endereco(codigo_endereco,estado, cidade, bairro, rua, cep)
VALUES 
(1, 'RJ', 'PETROPOLIS', 'CASCATINHA', 'RUA PEDRO WELMER', '25125-155'),
(2, 'RJ', 'PETROPOLIS', 'BINGEN', 'RUA BERNARDO VIANA', '22564-102'),
(3, 'RJ', 'PETROPOLIS', 'ITAIPAVA', 'RUA MARECHAL HERMES', '35425-005'),
(4, 'RJ', 'PETROPOLIS', 'CORREAS', 'RUA EXPEDICIONARIO', '67225-105'),
(5, 'RJ', 'PETROPOLIS', 'NOGUEIRA', 'RUA DO PINHERAL', '78525-150');

--Clinte
INSERT INTO cliente(codigo_cliente, nome_completo, nome_usuario, email, cpf, data_nascimento,numero_casa, complemento, codigo_endereco)
VALUES 
(1, 'Nubia Cardoso', 'Nubia', 'nubia@gmail.com', '251.181.651-25', '25/08/2002', 123, 'B',1),
(2, 'Fernando Silva', 'Fernando', 'fernandos@gmail.com', '549.456.644-52', '15/02/1998', 234, 'casa amarela',2),
(3, 'Bernardo Costa', 'Bernardo', 'bernardo@hotmail.com', '259.546.514-82', '05/03/1982', 345,'A',3),
(4, 'Raquel Batista', 'Raquel', 'raquelb@outlook.com', '452.563.856-52', '01/11/1995', 456, 'bloco c',4),
(5, 'Pedro Oliveira', 'Pedro', 'pedroo@gmail.com', '645.846.526-52', '09/05/1998', 567, 'portao de madeira',5);

--categoria
INSERT INTO categoria(codigo_categoria, nome_categoria, descricao_categoria)
VALUES
(123, 'Eletronico', 'Produtos Eletronicos'),
(321, 'Produto de Limpeza', 'Produtos de Limpeza'),
(111, 'Ferramenta', 'Ferramentos Multi Ultilidades'),
(222, 'Moveis', 'Moveis Decorativos'),
(333, 'Moda', 'Acessorios');

--Funcionarios
INSERT INTO funcionario(codigo_funcionario, nome_funcionario, cpf ) 
VALUES
('1','Fernando','521.984.852-41'),
('2','Bernardo','061.515.138-65'),
('3','Nubia','652.856.124-82'),
('4','Raquel','652.874.496-52'),
('5','Gabriel','762.985.155-52');

--Produto
INSERT INTO produto(codigo_produto, nome, descricao, quantidade_estoque, data_fabricacao, valor_unitario, codigo_categoria, codigo_funcionario)
VALUES
(1, 'Celular', 'Samsung A50', 1000, '25/08/2022', 1000.00, 123,1),
(2, 'Televisao', 'Smart tv 4K', 2500, '25/08/2022', 3000.00, 123,2),
(3, 'Tablet', 'Tablet Dobravel', 1500, '25/08/2022', 1500.00, 123,1),
(4, 'Airpod', 'Fones de Ouvido Bluetooh', 1250, '25/08/2022', 200.00, 123,1),
(5, 'Caixa de Som', 'Caixa de Som Bluetooth JBL', 1000, '25/08/2022', 1300.00, 123,2),
(6, 'Detergente', 'Detergente Ype', 800, '25/08/2022', 3.50, 321,1),
(7, 'Amaciante', 'Amaciante de Lavanda OMO', 600, '25/08/2022', 10.00, 321,1),
(8, 'Shampoo', 'Shampoo Anti Caspas', 1500, '25/08/2022', 8.00, 321,2),
(9, 'Alicate', 'Alicate Tramontina', 1250, '25/08/2022', 30.00, 222,1),
(10, 'Jogo de Chaves Fixas', 'Chaves Tramontina', 400, '25/08/2022', 75.00, 222,2);