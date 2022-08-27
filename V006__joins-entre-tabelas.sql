--Lista as relações entre produto e categoria
SELECT P.nome, p.descricao, p.valor_unitario, c.descricao_categoria FROM categoria AS c, produto AS p
	WHERE P.codigo_categoria = c.codigo_categoria;


--Lista os endereços completos dos clientes
SELECT c.nome_completo, c.cpf, c.numero_casa, c.complemento, e.cidade, e.bairro, e.rua, e.cep, e.estado FROM cliente AS c, endereco AS e
	WHERE c.codigo_cliente = e.codigo_endereco;


