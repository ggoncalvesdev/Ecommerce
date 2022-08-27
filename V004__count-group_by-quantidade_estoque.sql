--Lista pela quantidade de produto no estoque ASC
 SELECT produto, COUNT(quantidade_estoque) as "Por quantidade" FROM produto GROUP BY produto