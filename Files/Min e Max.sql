-- 1. Encontre o menor valor de Quantity na tabela.
SELECT MIN(Quantity) FROM orderdetails;

-- 2. Encontre o maior valor de Quantity na tabela.
SELECT MAX(Quantity) FROM orderdetails;

-- 3. Liste o menor OrderID na tabela.
SELECT MIN(OrderID) FROM orders;

-- 4. Liste o maior OrderID onde Quantity é maior que 5.
SELECT MAX(OrderID) FROM orderdetails WHERE Quantity > 5;

-- 5. Descubra o menor valor de Quantity para um ProductID específico, como ProductID = 3.
SELECT MIN(Quantity) FROM orderdetails WHERE ProductID = 3;

-- 6. Encontre o maior valor de OrderDetailID onde Quantity é menor que 10.
SELECT MAX(OrderDetailID) FROM orderdetails WHERE Quantity < 10;

-- 7. Liste o menor ProductID da tabela.
SELECT MIN(ProductID) FROM products;

-- 8. Encontre o maior valor de Quantity ordenado por ProductID em ordem crescente.
SELECT ProductID, MAX(Quantity) AS Quantidade_Produto FROM orderdetails 
GROUP BY ProductID 
ORDER BY ProductID ASC;

-- 9. Encontre o menor OrderID e ordene por Quantity em ordem decrescente.
SELECT MIN(OrderID) AS Menor_OrderID, Quantity FROM orderdetails 
GROUP BY Quantity 
ORDER BY Quantity DESC;

-- 10. Encontre o maior valor de Quantity onde ProductID seja diferente de 2.
SELECT ProductID, MAX(Quantity) AS 'Maior Produto' FROM orderdetails 
WHERE ProductID != 2 
GROUP BY ProductID 
ORDER BY ProductID DESC;

-- 11. Descubra o menor OrderDetailID ordenado por OrderID.
SELECT MIN(OrderDetailID), OrderID FROM orderdetails 
GROUP BY OrderID 
ORDER BY OrderID;

-- 12. Encontre o menor valor de Quantity para pedidos com OrderID maior que 50.
SELECT MIN(Quantity) AS 'Menor Quantidade', OrderID FROM orderdetails 
WHERE OrderID > 50 
GROUP BY OrderID 
ORDER BY OrderID;

-- 13. Encontre o maior valor de Quantity para ProductID igual a 4 e ordene por OrderDetailID.
SELECT MAX(Quantity) AS 'Maior Valor', ProductID, OrderDetailID FROM orderdetails 
WHERE ProductID = 4 
GROUP BY OrderDetailID, ProductID 
ORDER BY OrderDetailID ASC;

-- 14. Descubra o menor OrderDetailID para valores de Quantity maiores que 15.
SELECT MIN(OrderDetailID) AS 'Menor Valor', Quantity FROM orderdetails 
WHERE Quantity > 15 
GROUP BY Quantity, OrderDetailID 
ORDER BY Quantity DESC;

-- 15. Encontre o maior Quantity para produtos cujo ProductID está entre 5 e 10.
SELECT MAX(Quantity) AS 'Maior Valor', ProductID FROM orderdetails 
WHERE ProductID BETWEEN 5 AND 10 
GROUP BY ProductID;

-- 16. Liste o menor valor de OrderID para Quantity que é um múltiplo de 5.
SELECT MIN(OrderID) AS 'Menor valor', Quantity FROM orderdetails 
WHERE Quantity % 5 = 0 
GROUP BY Quantity;

-- 17. Encontre o maior valor de OrderDetailID e ordene por Quantity.
SELECT MAX(OrderDetailID) AS 'Maior Valor', Quantity FROM orderdetails 
GROUP BY Quantity 
ORDER BY Quantity DESC;

-- 18. Descubra o menor valor de Quantity para pedidos com OrderID menor que 30.
SELECT MIN(Quantity) AS 'Menor Valor', OrderID FROM orderdetails 
WHERE OrderID < 30 
GROUP BY OrderID 
ORDER BY MIN(Quantity) DESC;

-- 19. Liste o maior Quantity ordenado por ProductID em ordem decrescente.
SELECT ProductID, MAX(Quantity) AS MaiorValor FROM orderdetails 
GROUP BY ProductID 
ORDER BY ProductID DESC;

-- 20. Encontre o menor valor de ProductID onde Quantity é maior que 20.
SELECT MIN(ProductID) AS Menorvalor FROM orderdetails 
WHERE Quantity >= 20;

-- 21. Encontre o maior valor de Quantity para ProductID igual a 6 e ordene por OrderID.
SELECT OrderID, MAX(Quantity) AS MaiorQuantidade FROM orderdetails 
WHERE ProductID = 6 
GROUP BY OrderID 
ORDER BY OrderID;

-- 22. Liste o menor valor de OrderID e ordene por OrderDetailID em ordem crescente.
SELECT OrderDetailID, MIN(OrderID) AS MenorOrderID FROM orderdetails 
GROUP BY OrderDetailID 
ORDER BY OrderDetailID ASC;

-- 23. Descubra o maior valor de OrderDetailID onde ProductID é maior que 10.
SELECT ProductID, MAX(OrderDetailID) AS MaiorQuantidade FROM orderdetails 
WHERE ProductID >= 10 
GROUP BY ProductID 
ORDER BY MaiorQuantidade DESC;

-- 24. Liste o menor valor de Quantity ordenado por OrderID.
SELECT OrderID, MIN(Quantity) AS MenorQuantidade FROM orderdetails 
GROUP BY OrderID 
ORDER BY OrderID;

-- 25. Encontre o maior valor de OrderID para Quantity menor que 10.
SELECT MAX(OrderID) AS MaiorOrderID, Quantity FROM orderdetails 
WHERE Quantity < 10 
GROUP BY Quantity 
ORDER BY MAX(OrderID) DESC;

-- 26. Descubra o menor valor de Quantity para produtos cujo ProductID é par.
SELECT ProductID, MIN(Quantity) AS MenorQuantidade FROM orderdetails 
WHERE ProductID % 2 = 0 
GROUP BY ProductID;

-- 27. Encontre o maior valor de OrderDetailID para produtos cujo Quantity é múltiplo de 3.
SELECT MAX(OrderDetailID) AS MaiorValor, Quantity FROM orderdetails 
WHERE Quantity % 3 = 0 
GROUP BY Quantity 
ORDER BY MAX(OrderDetailID) DESC;

-- 28. Liste o menor valor de ProductID para Quantity entre 5 e 15.
SELECT MIN(ProductID) AS MenorValor, Quantity FROM orderdetails 
WHERE Quantity BETWEEN 5 AND 15 
GROUP BY Quantity 
ORDER BY MIN(ProductID) DESC;

-- 29. Encontre o maior valor de Quantity para pedidos com OrderID entre 50 e 100.
SELECT MAX(Quantity) AS MaiorValor, OrderID FROM orderdetails 
WHERE OrderID BETWEEN 50 AND 100 
GROUP BY OrderID 
ORDER BY MAX(Quantity) DESC;

-- 30. Descubra o menor OrderID onde Quantity é menor que 8 e ordene por ProductID.
SELECT ProductID, MIN(OrderID) AS MenorValor FROM orderdetails 
WHERE Quantity < 8 
GROUP BY ProductID 
ORDER BY ProductID DESC;

-- 31. Liste o maior Quantity e ordene por OrderDetailID.
SELECT OrderDetailID, MAX(Quantity) AS MaiorValor FROM orderdetails 
GROUP BY OrderDetailID 
ORDER BY OrderDetailID DESC;

-- 32. Descubra o menor Quantity onde OrderID é menor que 20.
SELECT MIN(Quantity) AS MenorValor, OrderID FROM orderdetails 
WHERE OrderID < 20 
GROUP BY OrderID;

-- 33. Encontre o maior valor de Quantity para produtos com ProductID menor que 10.
SELECT ProductID, MAX(Quantity) AS MaiorValor FROM orderdetails 
WHERE ProductID < 10 
GROUP BY ProductID 
ORDER BY MAX(Quantity) DESC;

-- 34. Encontre o menor valor de OrderDetailID para produtos com Quantity maior que 12.
SELECT Quantity, MIN(OrderDetailID) AS MenorValor FROM orderdetails 
WHERE Quantity > 12 
GROUP BY Quantity 
ORDER BY MIN(OrderDetailID) DESC;

-- 35. Liste o maior valor de OrderID para produtos cujo ProductID começa com "2".
SELECT MAX(OrderID) AS MaiorValor, ProductID FROM orderdetails 
WHERE ProductID LIKE '2%' 
GROUP BY ProductID;

-- 36. Descubra o menor valor de Quantity onde OrderID está entre 10 e 30.
SELECT MIN(Quantity) AS MenorValor, OrderID FROM orderdetails 
WHERE OrderID BETWEEN 10 AND 30 
GROUP BY OrderID;

-- 37. Liste o maior valor de OrderDetailID para produtos cujo ProductID está entre 3 e 8.
SELECT ProductID, MAX(OrderDetailID) AS MaiorValor FROM orderdetails 
WHERE ProductID BETWEEN 3 AND 8 
GROUP BY ProductID 
ORDER BY MAX(OrderDetailID) DESC;

-- 38. Descubra o menor valor de OrderID e ordene por Quantity em ordem crescente.
SELECT MIN(OrderID) AS MenorOrder, Quantity FROM orderdetails 
GROUP BY Quantity 
ORDER BY Quantity ASC;

-- 39. Encontre o maior valor de Quantity onde ProductID não está entre 5 e 15.
SELECT MAX(Quantity) FROM orderdetails 
WHERE ProductID NOT BETWEEN 5 AND 15;

-- 40. Liste o menor valor de OrderDetailID para Quantity maior que 18.
SELECT MIN(OrderDetailID) FROM orderdetails 
WHERE Quantity > 18;

-- 41. Encontre o maior valor de OrderID ordenado por ProductID.
SELECT ProductID, MAX(OrderID) FROM orderdetails 
GROUP BY ProductID 
ORDER BY ProductID;

-- 42. Descubra o menor Quantity para produtos com ProductID menor que 12.
SELECT MIN(Quantity) FROM orderdetails 
WHERE ProductID < 12;

-- 43. Liste o maior OrderDetailID onde Quantity está entre 7 e 14.
SELECT MAX(OrderDetailID) FROM orderdetails 
WHERE Quantity BETWEEN 7 AND 14;

-- 44. Encontre o menor valor de OrderID ordenado por Quantity.
SELECT Quantity, MIN(OrderID) FROM orderdetails 
GROUP BY Quantity 
ORDER BY Quantity;

-- 45. Descubra o maior Quantity onde OrderID é maior que 30.
SELECT MAX(Quantity) FROM orderdetails 
WHERE OrderID > 30;

-- 46. Liste o menor valor de OrderDetailID onde Quantity é múltiplo de 2.
SELECT MIN(OrderDetailID) FROM orderdetails 
WHERE Quantity % 2 = 0;

-- 47. Encontre o maior valor de OrderID e ordene por ProductID em ordem decrescente.
SELECT ProductID, MAX(OrderID) FROM orderdetails 
GROUP BY ProductID 
ORDER BY ProductID DESC;

-- 48. Descubra o menor valor de Quantity para produtos cujo ProductID termina com "5".
SELECT MIN(Quantity) FROM orderdetails 
WHERE ProductID LIKE '%5';

-- 49. Liste o maior valor de OrderDetailID para Quantity menor que 20.
SELECT MAX(OrderDetailID) FROM orderdetails 
WHERE Quantity < 20;

-- 50. Encontre o menor valor de OrderID onde Quantity é maior que 25.
SELECT MIN(OrderID) FROM orderdetails 
WHERE Quantity > 25;