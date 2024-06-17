DELIMITER //

CREATE PROCEDURE RelatorioDiarioCompras()
BEGIN
  SELECT DATE(data_compra) AS Data, COUNT(*) AS Quantidade
  FROM tabela_compras
  GROUP BY DATE(data_compra);
END //

DELIMITER ;
