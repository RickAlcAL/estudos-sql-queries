use catalogacao_e_emprestimos;

-- =================================================================================
-- EXERCÍCIOS: SELECT MIN/MAX FROM WHERE ORDER BY
-- =================================================================================

-- 1. Encontre o menor valor de Quantity na tabela.


-- 2. Encontre o maior valor de Quantity na tabela.


-- 3. Liste o menor OrderID na tabela.


-- 4. Liste o maior OrderID onde Quantity é maior que 5.


-- 5. Descubra o menor valor de Quantity para um ProductID específico, como ProductID = 3.


-- 6. Encontre o maior valor de OrderDetailID onde Quantity é menor que 10.


-- 7. Liste o menor ProductID da tabela.


-- 8. Encontre o maior valor de Quantity ordenado por ProductID em ordem crescente.


-- 9. Encontre o menor OrderID e ordene por Quantity em ordem decrescente.


-- 10. Encontre o maior valor de Quantity onde ProductID seja diferente de 2.


-- 11. Descubra o menor OrderDetailID ordenado por OrderID.


-- 12. Encontre o menor valor de Quantity para pedidos com OrderID maior que 50.


-- 13. Encontre o maior valor de Quantity para ProductID igual a 4 e ordene por OrderDetailID.


-- 14. Descubra o menor OrderDetailID para valores de Quantity maiores que 15.


-- 15. Encontre o maior Quantity para produtos cujo ProductID está entre 5 e 10.


-- 16. Liste o menor valor de OrderID para Quantity que é um múltiplo de 5.


-- 17. Encontre o maior valor de OrderDetailID e ordene por Quantity.


-- 18. Descubra o menor valor de Quantity para pedidos com OrderID menor que 30.


-- 19. Liste o maior Quantity ordenado por ProductID em ordem decrescente.


-- 20. Encontre o menor valor de ProductID onde Quantity é maior que 20.


-- 21. Encontre o maior valor de Quantity para ProductID igual a 6 e ordene por OrderID.


-- 22. Liste o menor valor de OrderID e ordene por OrderDetailID em ordem crescente.


-- 23. Descubra o maior valor de OrderDetailID onde ProductID é maior que 10.


-- 24. Liste o menor valor de Quantity ordenado por OrderID.


-- 25. Encontre o maior valor de OrderID para Quantity menor que 10.


-- 26. Descubra o menor valor de Quantity para produtos cujo ProductID é par.


-- 27. Encontre o maior valor de OrderDetailID para produtos cujo Quantity é múltiplo de 3.


-- 28. Liste o menor valor de ProductID para Quantity entre 5 e 15.


-- 29. Encontre o maior valor de Quantity para pedidos com OrderID entre 50 e 100.


-- 30. Descubra o menor OrderID onde Quantity é menor que 8 e ordene por ProductID.


-- 31. Liste o maior Quantity e ordene por OrderDetailID.


-- 32. Descubra o menor Quantity onde OrderID é menor que 20.


-- 33. Encontre o maior valor de Quantity para produtos com ProductID menor que 10.


-- 34. Encontre o menor valor de OrderDetailID para produtos com Quantity maior que 12.


-- 35. Liste o maior valor de OrderID para produtos cujo ProductID começa com "2".


-- 36. Descubra o menor valor de Quantity onde OrderID está entre 10 e 30.


-- 37. Liste o maior valor de OrderDetailID para produtos cujo ProductID está entre 3 e 8.


-- 38. Descubra o menor valor de OrderID e ordene por Quantity em ordem crescente.


-- 39. Encontre o maior valor de Quantity onde ProductID não está entre 5 e 15.


-- 40. Liste o menor valor de OrderDetailID para Quantity maior que 18.


-- 41. Encontre o maior valor de OrderID ordenado por ProductID.


-- 42. Descubra o menor Quantity para produtos com ProductID menor que 12.


-- 43. Liste o maior OrderDetailID onde Quantity está entre 7 e 14.


-- 44. Encontre o menor valor de OrderID ordenado por Quantity.


-- 45. Descubra o maior Quantity onde OrderID é maior que 30.


-- 46. Liste o menor valor de OrderDetailID onde Quantity é múltiplo de 2.


-- 47. Encontre o maior valor de OrderID e ordene por ProductID em ordem decrescente.


-- 48. Descubra o menor valor de Quantity para produtos cujo ProductID termina com "5".


-- 49. Liste o maior valor de OrderDetailID para Quantity menor que 20.


-- 50. Encontre o menor valor de OrderID onde Quantity é maior que 25.


-- =================================================================================
-- EXERCÍCIOS: SELECT COUNT FROM WHERE ORDER BY
-- =================================================================================

-- 1. Conte o número total de registros na tabela.
select count(*)  as 'Número de registros' 
from OrderDetail;

-- 2. Conte o número total de pedidos (OrderID) únicos na tabela.
select count(distinct OrderID) as 'Número total de pedidos únicos na tabela'
from OrderDetail;

-- 3. Conte o total de produtos (ProductID) diferentes.
select count(distinct ProductID) as 'Total de produtos diferentes'
from OrderDetail;

-- 4. Conte o número total de registros onde Quantity é maior que 10.
select count(*) as 'total de registros onde Quantity é maior que 10'
from  OrderDetail
where Quantity > 10;

-- 5. Conte quantos registros têm OrderID igual a 5.
select count(*) as 'Registros com OrderID igual a 5'
from OrderDetail
where OrderID = 5;

-- 6. Conte o número total de ProductID onde Quantity é menor que 20.
select count(ProductID) as 'Número total de ProductID onde Quantity é menor que 20.'
from OrderDetail
where Quantity < 20;

-- 7. Conte o número total de registros onde OrderDetailID é um número par.
select count(*) as 'Número total de registros onde OrderDetailID é um número par'
from OrderDetail
where OrderDetailID % 2 = 0;

-- 8. Conte quantos registros têm Quantity entre 5 e 15.
select count(*) 
from OrderDetail
where Quantity between 5 and 15;

-- 9. Conte o número de registros onde o OrderID é maior que 50.
select count(*) as 'Número de registros onde o OrderID é maior que 50'
from OrderDetail
where OrderID > 50;

-- 10. Conte quantos registros possuem ProductID igual a 3.
select count(*) as 'Registros possuem ProductID igual a 3'
from OrderDetail
where ProductID = 3;

-- 11. Conte o total de registros onde Quantity é um múltiplo de 3.
select count(*) as 'Total de registros onde Quantity é um múltiplo de 3'
from OrderDetail
where Quantity % 3 = 0;

-- 12. Conte o número total de pedidos (OrderID) maiores que 100.
select count(OrderID) as 'Número total de pedidos maiores que 100'
from OrderDetail
where OrderID > 100;

-- 13. Conte o número total de registros onde OrderDetailID é menor que 20.
select count(*) as 'Número total de registros onde OrderDetailID é menor que 20'
from OrderDetail
where OrderDetailID < 20;

-- 14. Conte o total de registros para produtos com ProductID menor que 8.
select count(*) as 'Total de registros para produtos com ProductID menor que 8'
from OrderDetail
where ProductID < 8;

-- 15. Conte quantos registros possuem Quantity maior que 25.
select count(*) as 'Registros possuem Quantity maior que 25'
from OrderDetail
where Quantity > 25;

-- 16. Conte o número de ProductID onde OrderID é menor que 15.
select count(ProductID) as 'Número de ProductID onde OrderID é menor que 15'
from OrderDetail
where OrderID < 15;

-- 17. Conte o número total de registros onde Quantity é menor que 5.
select count(*) as 'número total de registros onde Quantity é menor que 5'
from OrderDetail
where Quanntity > 5;

-- 18. Conte o total de pedidos (OrderID) com Quantity maior que 30.
select count(OrderID) as 'Total de pedidos (OrderID) com Quantity maior que 30'
from OrderDetail
where Quantity > 30;

-- 19. Conte o número total de registros onde ProductID é par.
select count(*) as 'Número total de registros onde ProductID é par'
from OrderDetail
where ProductID % 2 = 0;

-- 20. Conte o total de OrderDetailID onde Quantity está entre 10 e 20.
select count(OrderDetailID) as 'Total de OrderDetailID onde Quantity está entre 10 e 20'
from OrderDetail
where Quantity between 10 and 20;

-- 21. Conte quantos registros têm ProductID maior que 15.
select count(*) as 'Registros têm ProductID maior que 15'
from OrderDetail
where ProductID > 15;

-- 22. Conte o total de registros onde OrderDetailID começa com "1".
select count(*) as 'Total de registros onde OrderDetailID começa com "1"'
from OrderDetail
where OrderDetailID like '1%';

-- 23. Conte o número total de registros para pedidos com OrderID igual a 10.
select count(*) as 'Total de registros para pedidos com OrderID igual a 10'
from OrderDetail
where OrderID = 10;

-- 24. Conte o número total de registros onde Quantity termina com 0.
select count(*) as 'Total de registros onde Quantity termina com 0'
from OrderDetail
where Quantity like '%0';

-- 25. Conte o número de OrderID onde ProductID é menor que 4.
select count(OrderID) as 'Número de OrderID onde ProductID é menor que 4'
from OrderDetail
where ProductID < 4;

-- 26. Conte o total de registros com Quantity menor que 12.
select count(*) as 'Total de registros com Quantity menor que 12'
from OrderDetail
where Quantity < 12;

-- 27. Conte o número de registros onde o OrderDetailID é maior que 100.
select count(*) as 'Registros onde o OrderDetailID é maior que 100'
from OrderDetail
where OrderDetailID > 100;

-- 28. Conte quantos registros possuem OrderID igual a 8.
select count(*) as 'Quantos registros possuem OrderID igual a 8'
from OrderDetail
where OrderID = 8;

-- 29. Conte o número de produtos (ProductID) onde Quantity é maior que 15.
select count(ProductID) as 'Número de produtos onde Quantity é maior que 15'
from OrderDetail
where Quantity > 15;

-- 30. Conte o total de OrderDetailID onde Quantity é um número ímpar.
select count(OrderDetailID) as 'Total de OrderDetailID onde Quantity é um número ímpar'
from OrderDetail
where Quantity % 2 != 0;

-- 31. Conte o número total de registros onde ProductID está entre 2 e 10.
select count(*) as 'Total de registros onde ProductID está entre 2 e 10'
from OrderDetail
where ProductID between 2 and 10;

-- 32. Conte o total de registros para OrderID maiores que 20.
select count(*) as 'Total de registros para OrderID maiores que 20'
from OrderDetail
where OrderID > 20;

-- 33. Conte quantos registros possuem Quantity igual a 10.
select count(*) as 'Registros que possuem Quantity igual a 10'
from OrderDetail
where Quantity = 10;

-- 34. Conte o total de registros onde OrderDetailID termina com "3".
select count(*) as 'Total de registros onde OrderDetailID termina com "3"'
from OrderDetail
where OrderDetailID like '%3';

-- 35. Conte o número total de produtos (ProductID) diferentes onde Quantity é maior que 18.
select count(distinct ProductID) as 'Número total de produtos (ProductID) diferentes onde Quantity é maior que 18'
from OrderDetail
where Quantity > 18;

-- 36. Conte o total de registros com OrderID menor que 50.
select count(*) as 'Total de registros com OrderID menor que 50'
from OrderDetail
where OrderID < 50;

-- 37. Conte quantos registros possuem Quantity igual a 5.
select count(*) as 'Quantidade de registros que possuem Quantity igual a 5'
from OrderDetail
where Quantity = 5;

-- 38. Conte o total de registros onde ProductID começa com "4".
select count(*) as 'Total de registros onde ProductID começa com "4"'
from OrderDetail
where ProductID like '4%';

-- 39. Conte o número de pedidos (OrderID) com Quantity maior que 15.
select count(OrderID) as 'Pedidos com Quantity maior que 15'
from OrderDetail
where Quantity > 15;

-- 40. Conte o total de registros onde OrderDetailID é menor que 25.
select count(*) as 'Total de registros onde OrderDetailID é menor que 25'
from OrderDetail
where OrderDetailID < 25;

-- 41. Conte o número total de registros onde OrderID está entre 30 e 70.
select count(*) as 'Total de registros onde OrderID está entre 30 e 70'
from OrderDetail
where OrderID between 30 and 70;

-- 42. Conte quantos registros possuem ProductID igual a 7.
select count(*) as 'Quantidade de registros que possuem ProductID igual a 7'
from OrderDetail
where ProductID = 7;

-- 43. Conte o número de registros onde Quantity é maior que 20.
select count(*) as 'Número de registros onde Quantity é maior que 20'
from OrderDetail
where Quanntity > 20;

-- 44. Conte o total de registros com OrderID maior que 15.
select count(*) as 'Total de registros com OrderID maior que 15'
from OrderDetail
where OrderID > 15;

-- 45. Conte o número total de registros onde ProductID termina com "6".
select count(*) as 'Total de registros onde ProductID termina com "6"'
from OrderDetail
where ProductID like '%6';

-- 46. Conte quantos registros possuem Quantity entre 7 e 14.
select count(*) as 'Quantidade de registros que possuem Quantity entre 7 e 14'
from OrderDetail
where Quantity between 7 and 14;

-- 47. Conte o número total de registros onde OrderID é maior que 90.
select count(*) as 'Total de registros onde OrderID é maior que 90'
from OrderDetail
where OrderID > 90;

-- 48. Conte quantos registros têm OrderDetailID menor que 50.
select count(*) as 'Quanntidade de registros que têm OrderDetailID menor que 50'
from OrderDetail
where OrderDetailID < 50;

-- 49. Conte o número total de registros onde Quantity é maior que 30.
select count(*) as 'Total de registros onde Quantity é maior que 30'
from OrderDetail
where Quantity > 30;

-- 50. Conte quantos registros possuem OrderID entre 10 e 40.
select count(*) as 'Registros possuem OrderID entre 10 e 40'
from OrderDetail
where OrderID between 10 and 40;