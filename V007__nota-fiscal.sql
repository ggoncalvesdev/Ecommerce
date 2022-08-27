--Cria Nota-Fiscal
SELECT 
 ped.codigo_pedido as "N° Pedido",
 produto.nome as "Produto",
 produto.valor_unitario as "Valor unitário",
 ci.quantidade as "Quantidade",
 ped.data_pedido as "Data Emissão",
 cliente.nome_completo as "Comprador",
 cliente.cpf,
 ci.valor_venda * ci.quantidade as "total"
 
 FROM pedido ped
 INNER JOIN contem_item ci on (ci.codigo_pedido = ped.codigo_pedido)
 INNER JOIN produto on (produto.codigo_produto = ci.codigo_produto)
 INNER JOIN cliente on (ped.codigo_cliente = cliente.codigo_cliente)
 WHERE ped.codigo_pedido = 1;
 
 -- Cria a venda
 INSERT INTO contem_item(codigo_contem_item, quantidade, desconto, codigo_produto, codigo_pedido, valor_venda) VALUES (1, 2, 0, 3, 1,1500);
 INSERT INTO contem_item(codigo_contem_item, quantidade, desconto, codigo_produto, codigo_pedido, valor_venda) VALUES (2, 1, 0, 6, 1,3.5);

-- Cria pedido
 INSERT INTO pedido (codigo_pedido, data_pedido, status, codigo_cliente) VALUES (2, '25/08/2002', 'ativo', 2)
 INSERT INTO pedido (codigo_pedido, data_pedido, status, codigo_cliente) VALUES (1, '25/08/2002', 'ativo', 1)