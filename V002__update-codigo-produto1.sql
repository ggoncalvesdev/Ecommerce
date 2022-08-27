--Atualiza a quantidade no estoque de um produto de codigo 1
UPDATE produto  SET quantidade_estoque = quantidade_estoque + 1
WHERE codigo_produto =1;