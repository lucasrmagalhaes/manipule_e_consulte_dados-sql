SELECT * FROM TB_PRODUTOS WHERE PRODUTO = '1040107';

SELECT * FROM TB_PRODUTOS WHERE SABOR = "Melancia";

SELECT * FROM TB_PRODUTOS WHERE SABOR = "Limao";

-- NÃO RECOMENDADO
UPDATE TB_PRODUTOS SET SABOR = 'Citricos' WHERE PRODUTO = '1088126';
UPDATE TB_PRODUTOS SET SABOR = 'Citricos' WHERE PRODUTO = '544931';

-- RECOMENDADO
UPDATE TB_PRODUTOS SET SABOR = 'Citricos' WHERE SABOR = 'Limao';

SELECT * FROM TB_PRODUTOS WHERE SABOR = "Limao";

SELECT * FROM TB_PRODUTOS WHERE SABOR = "Citricos";