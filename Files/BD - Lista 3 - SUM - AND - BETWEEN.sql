-- Exercícios: SELECT SUM FROM WHERE ORDER BY

-- 1. Calcule a soma de Quantity de todos os registros na tabela.
 SELECT SUM(Quantity) AS 'Quantidade Total '
 FROM orderdetails;

-- 2. Encontre a soma de Quantity onde o ProductID é maior que 10.
 SELECT ProductID, SUM(Quantity) AS 'Quantidade Total'
 FROM orderdetails
 WHERE ProductID > 10
 GROUP BY ProductID;

-- 3. Determine a soma de Quantity onde o OrderID seja menor que 100.
SELECT OrderID,SUM(Quantity) 'Quantidade Total'
FROM orderdetails
WHERE OrderID < 100
GROUP BY OrderID;

-- 4. Calcule a soma de Quantity para os registros onde o OrderDetailID seja par.
SELECT OrderDetailID, SUM(Quantity) 'Quantidade Total'
FROM orderdetails
WHERE OrderDetailID % 2 = 0
GROUP BY OrderDetailID;

-- 5. Obtenha a soma de Quantity para os registros com OrderID igual a 200.
SELECT OrderID, SUM(Quantity) AS 'Quantidade Total'
FROM orderdetails
WHERE OrderID = 200
GROUP BY OrderID;

-- 6. Calcule a soma de Quantity para os registros com ProductID entre 5 e 15.
SELECT ProductID, SUM(Quantity) AS 'Quantidade Total'
FROM orderdetails
WHERE ProductID  BETWEEN 5 AND 15
GROUP BY ProductID;

-- 7. Determine a soma de Quantity para os registros onde Quantity seja maior que 20.
SELECT Quantity, SUM(Quantity) AS 'Subtotal'
FROM orderdetails
WHERE Quantity > 20
GROUP BY Quantity;

-- 8. Encontre a soma de Quantity onde o OrderID seja ímpar.
SELECT OrderID AS 'Valor Impar', SUM(Quantity) AS 'Quantidade Total'
FROM orderdetails
WHERE OrderID % 2 = 1
GROUP BY OrderID;

-- 9. Calcule a soma de Quantity onde o ProductID seja divisível por 5.
SELECT ProductID AS 'ID do Produto divisivel por 5', SUM(Quantity) AS 'Quantidade Total'
FROM orderdetails
WHERE ProductID % 5 = 0
GROUP BY ProductID;

-- 10. Determine a soma de Quantity para registros com OrderDetailID entre 50 e 100.
SELECT OrderDetailID AS 'Registros que esá entre 50 e 100', SUM(Quantity) AS 'Quantidade Total'
FROM orderdetails
WHERE OrderDetailID BETWEEN 50 AND 100
GROUP BY OrderDetailID;

-- 11. Filtre os registros com Quantity maior que 15 e calcule a soma de Quantity.
SELECT Quantity AS 'Quantidade > 15', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity > 15
GROUP BY Quantity;

-- 12. Obtenha a soma de Quantity onde o ProductID esteja nos valores 3, 6 e 9.
SELECT ProductID AS 'Valores em 3, 6 e 9', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID IN (3,6,9)
GROUP BY ProductID;

-- 13. Determine a soma de Quantity onde o OrderID termine com o número 0.
SELECT OrderID AS 'IDs terminando com 0', SUM(Quantity) AS 'Soma total'
FROM orderdetails
WHERE OrderID LIKE "%0"
GROUP BY OrderID;

-- 14. Calcule a soma de Quantity onde o ProductID seja maior que 20.
SELECT ProductID AS 'ID > 20', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID > 20
GROUP BY ProductID;

-- 15. Encontre a soma de Quantity onde o OrderDetailID seja menor que 30.
SELECT OrderDetailID AS 'Soma < 30', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID < 30
GROUP BY OrderDetailID DESC;

-- 16. Determine a soma de Quantity para os registros onde Quantity esteja entre 10 e 30.
SELECT Quantity AS 'Quantidade entre 10 e 30', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity BETWEEN 10 AND 30
GROUP BY Quantity;

-- 17. Filtre os registros onde OrderID seja múltiplo de 4 e calcule a soma de Quantity.
SELECT OrderID AS 'Múltiplo de 4', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID % 4 = 0
GROUP BY OrderID DESC;

-- 18. Calcule a soma de Quantity onde o ProductID não esteja nos valores 1, 2, e 3.
SELECT ProductID AS 'Não está entre 1,2,3', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID NOT IN (1, 2, 3)
GROUP BY ProductID;

-- 19. Obtenha a soma de Quantity onde o OrderDetailID seja maior que 200.
SELECT OrderDetailID AS 'Valores Maiores que 200', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID > 200
GROUP BY OrderDetailID;

-- 20. Determine a soma de Quantity onde o OrderID comece com o número 1.
SELECT OrderID AS 'Começando com 1', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID LIKE "1%"
GROUP BY OrderID;

-- 21. Calcule a soma de Quantity onde o ProductID seja divisível por 7.
SELECT ProductID AS 'Divisível por 7', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID % 7 = 0
GROUP BY ProductID;

-- 22. Encontre a soma de Quantity onde o OrderDetailID termine com 5.
SELECT OrderDetailID AS 'Termina com 5', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID LIKE '%5'
GROUP BY OrderDetailID;

-- 23. Determine a soma de Quantity para os registros onde Quantity seja menor que 12.
SELECT Quantity AS 'Menor que 12', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity < 12
GROUP BY Quantity;

-- 24. Filtre os registros onde OrderID seja igual a 300 e calcule a soma de Quantity.
SELECT OrderID AS 'Pedido 300', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID = 300
GROUP BY OrderID;

-- 25. Calcule a soma de Quantity para os registros com ProductID entre 15 e 25.
SELECT ProductID AS 'Entre 15 e 25', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID BETWEEN 15 AND 25
GROUP BY ProductID;

-- 26. Obtenha a soma de Quantity onde o OrderDetailID seja ímpar.
SELECT OrderDetailID AS 'ID Ímpar', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID % 2 <> 0
GROUP BY OrderDetailID;

-- 27. Encontre a soma de Quantity para os registros onde o ProductID seja maior que 50.
SELECT ProductID AS 'Maior que 50', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID > 50
GROUP BY ProductID;

-- 28. Determine a soma de Quantity onde Quantity esteja entre 5 e 20.
SELECT Quantity AS 'Entre 5 e 20', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity BETWEEN 5 AND 20
GROUP BY Quantity;

-- 29. Calcule a soma de Quantity para os registros com OrderDetailID menor que 10.
SELECT OrderDetailID AS 'Menor que 10', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID < 10
GROUP BY OrderDetailID;

-- 30. Filtre os registros onde o OrderID seja maior que 100 e calcule a soma de Quantity.
SELECT OrderID AS 'Maior que 100', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID > 100
GROUP BY OrderID;

-- 31. Obtenha a soma de Quantity onde o ProductID esteja nos valores 2, 4 e 8.
SELECT ProductID AS 'Valores 2, 4 e 8', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID IN (2, 4, 8)
GROUP BY ProductID;

-- 32. Determine a soma de Quantity onde o OrderDetailID comece com o número 3.
SELECT OrderDetailID AS 'Começa com 3', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID LIKE '3%'
GROUP BY OrderDetailID;

-- 33. Encontre a soma de Quantity onde Quantity seja divisível por 10.
SELECT Quantity AS 'Divisível por 10', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity % 10 = 0
GROUP BY Quantity;

-- 34. Calcule a soma de Quantity onde o OrderID seja maior que 250.
SELECT OrderID AS 'Maior que 250', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID > 250
GROUP BY OrderID;

-- 35. Determine a soma de Quantity onde o ProductID termine com o número 6.
SELECT ProductID AS 'Termina com 6', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID LIKE '%6'
GROUP BY ProductID;

-- 36. Filtre os registros onde o OrderID seja menor que 50 e calcule a soma de Quantity.
SELECT OrderID AS 'Menor que 50', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID < 50
GROUP BY OrderID;

-- 37. Obtenha a soma de Quantity onde o ProductID seja maior que 30.
SELECT ProductID AS 'Maior que 30', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID > 30
GROUP BY ProductID;

-- 38. Calcule a soma de Quantity onde o OrderDetailID seja maior que 400.
SELECT OrderDetailID AS 'Maior que 400', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID > 400
GROUP BY OrderDetailID;

-- 39. Determine a soma de Quantity onde o OrderID esteja entre 20 e 60.
SELECT OrderID AS 'Entre 20 e 60', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID BETWEEN 20 AND 60
GROUP BY OrderID;

-- 40. Filtre os registros onde Quantity seja maior que 18 e calcule a soma de Quantity.
SELECT Quantity AS 'Maior que 18', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity > 18
GROUP BY Quantity;

-- 41. Encontre a soma de Quantity onde o ProductID seja divisível por 9.
SELECT ProductID AS 'Divisível por 9', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID % 9 = 0
GROUP BY ProductID;

-- 42. Calcule a soma de Quantity onde o OrderDetailID seja menor que 150.
SELECT OrderDetailID AS 'Menor que 150', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID < 150
GROUP BY OrderDetailID;

-- 43. Determine a soma de Quantity para os registros onde Quantity esteja entre 25 e 40.
SELECT Quantity AS 'Entre 25 e 40', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity BETWEEN 25 AND 40
GROUP BY Quantity;

-- 44. Obtenha a soma de Quantity onde o ProductID seja igual a 7.
SELECT ProductID AS 'Produto 7', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID = 7
GROUP BY ProductID;

-- 45. Calcule a soma de Quantity para os registros com OrderID maior que 400.
SELECT OrderID AS 'Maior que 400', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID > 400
GROUP BY OrderID;

-- 46. Encontre a soma de Quantity para os registros onde OrderDetailID termine com 9.
SELECT OrderDetailID AS 'Termina com 9', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID LIKE '%9'
GROUP BY OrderDetailID;

-- 47. Determine a soma de Quantity onde o OrderID seja múltiplo de 5.
SELECT OrderID AS 'Múltiplo de 5', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderID % 5 = 0
GROUP BY OrderID;

-- 48. Filtre os registros onde o Quantity esteja entre 20 e 50 e calcule a soma de Quantity.
SELECT Quantity AS 'Entre 20 e 50', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE Quantity BETWEEN 20 AND 50
GROUP BY Quantity;

-- 49. Obtenha a soma de Quantity onde o ProductID seja menor que 12.
SELECT ProductID AS 'Menor que 12', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE ProductID < 12
GROUP BY ProductID;

-- 50. Calcule a soma de Quantity onde o OrderDetailID esteja entre 100 e 300.
SELECT OrderDetailID AS 'Entre 100 e 300', SUM(Quantity) AS 'Soma Total'
FROM orderdetails
WHERE OrderDetailID BETWEEN 100 AND 300
GROUP BY OrderDetailID;

-- Exercícios: SELECT FROM WHERE AND ORDER BY

-- 1. Liste todos os registros onde Quantity seja maior que 15 e ProductID seja maior que 10, ordenados por OrderDetailID.
SELECT Quantity AS 'Valores > 15',ProductID AS 'Valores > 10',OrderDetailID
FROM orderdetails
WHERE Quantity > 15 AND ProductID > 10
ORDER BY OrderDetailID;

-- 2. Filtre os registros onde OrderID seja menor que 100 e Quantity seja maior que 20, ordenados por ProductID.
SELECT OrderID AS 'Valores > 100', Quantity AS 'Valores > 20', ProductID AS 'ID do produto'
FROM orderdetails
WHERE OrderID < 100 AND Quantity > 20
ORDER BY ProductID;

-- 3. Obtenha os registros onde ProductID esteja entre 5 e 15 e OrderID seja divisível por 2, ordenados por Quantity.
SELECT ProductID AS 'Valores entre 5 e 15', OrderID 'Valores divisiveis por 2', Quantity AS 'Quantidade'
FROM orderdetails
WHERE ProductID BETWEEN 5 AND 15 AND OrderID % 2 = 0
ORDER BY Quantity;

-- 4. Liste todos os registros onde OrderDetailID seja maior que 50 e ProductID termine com 0, ordenados por OrderID.
SELECT OrderDetailID AS 'Valores > 50', ProductID 'ID terminados em 0', OrderID AS 'ID da ordem'
FROM orderdetails
WHERE OrderDetailID > 50 AND ProductID LIKE "%0"
ORDER BY OrderID;

-- 5. Filtre os registros onde Quantity seja menor que 12 e OrderID esteja entre 100 e 200, ordenados por ProductID.
SELECT Quantity AS 'Valores < 12', OrderID AS 'Valores entre 100 a 200', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE Quantity < 12 AND OrderID BETWEEN 100 AND 200
ORDER BY ProductID;

-- 6. Liste os registros onde OrderID seja igual a 300 e Quantity esteja entre 10 e 20, ordenados por OrderDetailID.
SELECT OrderID AS 'Valores igual a 300',Quantity AS 'Valores entre 10 e 20', OrderDetailID AS 'ID detalhe da ordem'
FROM orderdetails
WHERE OrderID = 300 AND Quantity BETWEEN 10 AND 20
ORDER BY OrderDetailID

Com certeza! Preparei todas as queries seguindo exatamente o seu padrão de formatação: comentário do exercício, SELECT com apelidos (AS), filtros no WHERE, ordenação com ORDER BY e o ponto e vírgula ao final.

Aqui está o código completo para você copiar e colar:

-- 7. Obtenha todos os registros onde ProductID seja maior que 20 e Quantity seja um número ímpar, ordenados por OrderID.
SQL

SELECT ProductID AS 'ID > 20', Quantity AS 'Quantidade Ímpar', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE ProductID > 20 AND Quantity % 2 <> 0
ORDER BY OrderID;

-- 8. Liste os registros onde OrderDetailID seja divisível por 5 e ProductID seja menor que 10, ordenados por Quantity.
SELECT OrderDetailID AS 'Divisível por 5', ProductID AS 'ID < 10', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderDetailID % 5 = 0 AND ProductID < 10
ORDER BY Quantity;

-- 9. Filtre os registros onde Quantity seja maior que 18 e OrderID termine com 3, ordenados por ProductID.
SELECT Quantity AS 'Qtd > 18', OrderID AS 'Termina com 3', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE Quantity > 18 AND OrderID LIKE '%3'
ORDER BY ProductID;

-- 10. Obtenha os registros onde ProductID seja divisível por 4 e OrderDetailID seja menor que 200, ordenados por Quantity.
SELECT ProductID AS 'Divisível por 4', OrderDetailID AS 'ID < 200', Quantity AS 'Quantidade'
FROM orderdetails
WHERE ProductID % 4 = 0 AND OrderDetailID < 200
ORDER BY Quantity;

-- 11. Liste os registros onde OrderID seja múltiplo de 3 e Quantity seja maior que 10, ordenados por OrderDetailID.
SELECT OrderID AS 'Múltiplo de 3', Quantity AS 'Qtd > 10', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE OrderID % 3 = 0 AND Quantity > 10
ORDER BY OrderDetailID;

-- 12. Obtenha os registros onde OrderDetailID termine com 6 e Quantity esteja entre 20 e 40, ordenados por ProductID.
SELECT OrderDetailID AS 'Termina com 6', Quantity AS 'Entre 20 e 40', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderDetailID LIKE '%6' AND Quantity BETWEEN 20 AND 40
ORDER BY ProductID;

-- 13. Liste os registros onde ProductID seja menor que 30 e OrderID seja maior que 100, ordenados por Quantity.
SELECT ProductID AS 'ID < 30', OrderID AS 'ID > 100', Quantity AS 'Quantidade'
FROM orderdetails
WHERE ProductID < 30 AND OrderID > 100
ORDER BY Quantity;

-- 14. Filtre os registros onde Quantity seja divisível por 7 e OrderDetailID seja menor que 300, ordenados por ProductID.
SELECT Quantity AS 'Divisível por 7', OrderDetailID AS 'ID < 300', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE Quantity % 7 = 0 AND OrderDetailID < 300
ORDER BY ProductID;

-- 15. Obtenha os registros onde OrderID esteja entre 150 e 300 e Quantity seja maior que 25, ordenados por OrderDetailID.
SELECT OrderID AS 'Entre 150 e 300', Quantity AS 'Qtd > 25', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE OrderID BETWEEN 150 AND 300 AND Quantity > 25
ORDER BY OrderDetailID;

-- 16. Liste os registros onde Quantity seja menor que 20 e ProductID termine com 5, ordenados por OrderID.
SELECT Quantity AS 'Qtd < 20', ProductID AS 'Termina com 5', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE Quantity < 20 AND ProductID LIKE '%5'
ORDER BY OrderID;

-- 17. Filtre os registros onde OrderID seja maior que 500 e ProductID seja divisível por 3, ordenados por Quantity.
SELECT OrderID AS 'ID > 500', ProductID AS 'Divisível por 3', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderID > 500 AND ProductID % 3 = 0
ORDER BY Quantity;

-- 18. Liste os registros onde OrderDetailID esteja entre 100 e 200 e Quantity seja menor que 15, ordenados por ProductID.
SELECT OrderDetailID AS 'Entre 100 e 200', Quantity AS 'Qtd < 15', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderDetailID BETWEEN 100 AND 200 AND Quantity < 15
ORDER BY ProductID;

-- 19. Obtenha os registros onde ProductID seja maior que 10 e OrderID seja menor que 50, ordenados por Quantity.
SELECT ProductID AS 'ID > 10', OrderID AS 'ID < 50', Quantity AS 'Quantidade'
FROM orderdetails
WHERE ProductID > 10 AND OrderID < 50
ORDER BY Quantity;

-- 20. Liste os registros onde OrderDetailID seja menor que 10 e Quantity seja divisível por 2, ordenados por OrderID.
SELECT OrderDetailID AS 'ID < 10', Quantity AS 'Divisível por 2', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE OrderDetailID < 10 AND Quantity % 2 = 0
ORDER BY OrderID;

-- 21. Filtre os registros onde OrderID esteja entre 300 e 400 e ProductID seja menor que 20, ordenados por Quantity.
SELECT OrderID AS 'Entre 300 e 400', ProductID AS 'ID < 20', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderID BETWEEN 300 AND 400 AND ProductID < 20
ORDER BY Quantity;

-- 22. Obtenha os registros onde Quantity seja maior que 30 e OrderDetailID termine com 8, ordenados por OrderID.
SELECT Quantity AS 'Qtd > 30', OrderDetailID AS 'Termina com 8', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE Quantity > 30 AND OrderDetailID LIKE '%8'
ORDER BY OrderID;

-- 23. Liste os registros onde OrderID seja divisível por 6 e Quantity esteja entre 15 e 35, ordenados por ProductID.
SELECT OrderID AS 'Divisível por 6', Quantity AS 'Entre 15 e 35', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderID % 6 = 0 AND Quantity BETWEEN 15 AND 35
ORDER BY ProductID;

-- 24. Filtre os registros onde ProductID seja maior que 25 e OrderDetailID seja divisível por 3, ordenados por Quantity.
SELECT ProductID AS 'ID > 25', OrderDetailID AS 'Divisível por 3', Quantity AS 'Quantidade'
FROM orderdetails
WHERE ProductID > 25 AND OrderDetailID % 3 = 0
ORDER BY Quantity;

-- 25. Liste os registros onde OrderDetailID seja maior que 400 e OrderID seja múltiplo de 5, ordenados por Quantity.
SELECT OrderDetailID AS 'ID > 400', OrderID AS 'Múltiplo de 5', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderDetailID > 400 AND OrderID % 5 = 0
ORDER BY Quantity;

-- 26. Obtenha os registros onde Quantity seja menor que 10 e OrderID seja maior que 50, ordenados por ProductID.
SELECT Quantity AS 'Qtd < 10', OrderID AS 'ID > 50', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE Quantity < 10 AND OrderID > 50
ORDER BY ProductID;

-- 27. Filtre os registros onde ProductID esteja entre 5 e 20 e OrderID termine com 7, ordenados por OrderDetailID.
SELECT ProductID AS 'Entre 5 e 20', OrderID AS 'Termina com 7', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE ProductID BETWEEN 5 AND 20 AND OrderID LIKE '%7'
ORDER BY OrderDetailID;

-- 28. Liste os registros onde OrderID seja menor que 200 e Quantity seja maior que 25, ordenados por ProductID.
SELECT OrderID AS 'ID < 200', Quantity AS 'Qtd > 25', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderID < 200 AND Quantity > 25
ORDER BY ProductID;

-- 29. Obtenha os registros onde ProductID seja divisível por 9 e Quantity esteja entre 10 e 20, ordenados por OrderID.
SELECT ProductID AS 'Divisível por 9', Quantity AS 'Entre 10 e 20', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE ProductID % 9 = 0 AND Quantity BETWEEN 10 AND 20
ORDER BY OrderID;

-- 30. Filtre os registros onde Quantity seja maior que 50 e ProductID seja menor que 30, ordenados por OrderDetailID.
SELECT Quantity AS 'Qtd > 50', ProductID AS 'ID < 30', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE Quantity > 50 AND ProductID < 30
ORDER BY OrderDetailID;

-- 31. Liste os registros onde OrderDetailID seja divisível por 4 e OrderID seja menor que 300, ordenados por Quantity.
SELECT OrderDetailID AS 'Divisível por 4', OrderID AS 'ID < 300', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderDetailID % 4 = 0 AND OrderID < 300
ORDER BY Quantity;

-- 32. Obtenha os registros onde Quantity seja menor que 5 e OrderID esteja entre 10 e 100, ordenados por ProductID.
SELECT Quantity AS 'Qtd < 5', OrderID AS 'Entre 10 e 100', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE Quantity < 5 AND OrderID BETWEEN 10 AND 100
ORDER BY ProductID;

-- 33. Filtre os registros onde OrderID termine com 2 e ProductID seja maior que 15, ordenados por Quantity.
SELECT OrderID AS 'Termina com 2', ProductID AS 'ID > 15', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderID LIKE '%2' AND ProductID > 15
ORDER BY Quantity;

-- 34. Liste os registros onde Quantity seja menor que 12 e OrderDetailID seja maior que 150, ordenados por OrderID.
SELECT Quantity AS 'Qtd < 12', OrderDetailID AS 'ID > 150', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE Quantity < 12 AND OrderDetailID > 150
ORDER BY OrderID;

-- 35. Obtenha os registros onde ProductID esteja entre 20 e 40 e Quantity seja divisível por 3, ordenados por Quantity.
SELECT ProductID AS 'Entre 20 e 40', Quantity AS 'Divisível por 3', Quantity AS 'Ordenação'
FROM orderdetails
WHERE ProductID BETWEEN 20 AND 40 AND Quantity % 3 = 0
ORDER BY Quantity;

-- 36. Filtre os registros onde OrderID seja maior que 700 e Quantity seja maior que 40, ordenados por ProductID.
SELECT OrderID AS 'ID > 700', Quantity AS 'Qtd > 40', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderID > 700 AND Quantity > 40
ORDER BY ProductID;

-- 37. Liste os registros onde ProductID seja divisível por 8 e OrderID seja menor que 400, ordenados por Quantity.
SELECT ProductID AS 'Divisível por 8', OrderID AS 'ID < 400', Quantity AS 'Quantidade'
FROM orderdetails
WHERE ProductID % 8 = 0 AND OrderID < 400
ORDER BY Quantity;

-- 38. Obtenha os registros onde Quantity seja maior que 15 e OrderDetailID termine com 4, ordenados por OrderID.
SELECT Quantity AS 'Qtd > 15', OrderDetailID AS 'Termina com 4', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE Quantity > 15 AND OrderDetailID LIKE '%4'
ORDER BY OrderID;

-- 39. Filtre os registros onde OrderID seja menor que 100 e ProductID esteja entre 10 e 20, ordenados por OrderDetailID.
SELECT OrderID AS 'ID < 100', ProductID AS 'Entre 10 e 20', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE OrderID < 100 AND ProductID BETWEEN 10 AND 20
ORDER BY OrderDetailID;

-- 40. Liste os registros onde Quantity seja menor que 30 e ProductID seja divisível por 5, ordenados por OrderID.
SELECT Quantity AS 'Qtd < 30', ProductID AS 'Divisível por 5', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE Quantity < 30 AND ProductID % 5 = 0
ORDER BY OrderID;

-- 41. Obtenha os registros onde ProductID termine com 9 e Quantity seja menor que 20, ordenados por OrderDetailID.
SELECT ProductID AS 'Termina com 9', Quantity AS 'Qtd < 20', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE ProductID LIKE '%9' AND Quantity < 20
ORDER BY OrderDetailID;

-- 42. Liste os registros onde OrderID seja divisível por 5 e ProductID esteja entre 15 e 30, ordenados por Quantity.
SELECT OrderID AS 'Divisível por 5', ProductID AS 'Entre 15 e 30', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderID % 5 = 0 AND ProductID BETWEEN 15 AND 30
ORDER BY Quantity;

-- 43. Filtre os registros onde Quantity esteja entre 25 e 50 e OrderDetailID seja divisível por 7, ordenados por OrderID.
SELECT Quantity AS 'Entre 25 e 50', OrderDetailID AS 'Divisível por 7', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE Quantity BETWEEN 25 AND 50 AND OrderDetailID % 7 = 0
ORDER BY OrderID;
-- 44. Obtenha os registros onde OrderID seja menor que 250 e Quantity seja divisível por 6, ordenados por ProductID.
SELECT OrderID AS 'ID < 250', Quantity AS 'Divisível por 6', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderID < 250 AND Quantity % 6 = 0
ORDER BY ProductID;

-- 45. Liste os registros onde OrderDetailID esteja entre 50 e 150 e ProductID seja maior que 20, ordenados por Quantity.
SELECT OrderDetailID AS 'Entre 50 e 150', ProductID AS 'ID > 20', Quantity AS 'Quantidade'
FROM orderdetails
WHERE OrderDetailID BETWEEN 50 AND 150 AND ProductID > 20
ORDER BY Quantity;

-- 46. Filtre os registros onde OrderID seja igual a 350 e Quantity seja maior que 30, ordenados por ProductID.
SELECT OrderID AS 'Pedido 350', Quantity AS 'Qtd > 30', ProductID AS 'ID do Produto'
FROM orderdetails
WHERE OrderID = 350 AND Quantity > 30
ORDER BY ProductID;
-- 47. Obtenha os registros onde ProductID termine com 0 e OrderDetailID seja divisível por 2, ordenados por OrderID.
SELECT ProductID AS 'Termina com 0', OrderDetailID AS 'Divisível por 2', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE ProductID LIKE '%0' AND OrderDetailID % 2 = 0
ORDER BY OrderID;

-- 48. Liste os registros onde Quantity esteja entre 10 e 25 e ProductID seja menor que 50, ordenados por Quantity.
SELECT Quantity AS 'Entre 10 e 25', ProductID AS 'ID < 50', Quantity AS 'Ordenação'
FROM orderdetails
WHERE Quantity BETWEEN 10 AND 25 AND ProductID < 50
ORDER BY Quantity;

-- 49. Filtre os registros onde OrderID termine com 1 e Quantity seja divisível por 5, ordenados por OrderDetailID.
SELECT OrderID AS 'Termina com 1', Quantity AS 'Divisível por 5', OrderDetailID AS 'ID Detalhe'
FROM orderdetails
WHERE OrderID LIKE '%1' AND Quantity % 5 = 0
ORDER BY OrderDetailID;
-- 50. Obtenha os registros onde OrderDetailID seja maior que 300 e Quantity seja menor que 12, ordenados por OrderID.
SELECT OrderDetailID AS 'ID > 300', Quantity AS 'Qtd < 12', OrderID AS 'ID da Ordem'
FROM orderdetails
WHERE OrderDetailID > 300 AND Quantity < 12
ORDER BY OrderID;

