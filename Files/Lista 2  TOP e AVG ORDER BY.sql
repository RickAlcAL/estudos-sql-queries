use catalogacao_e_emprestimos;

-- =============================================================
-- Lista de exercícios: SELECT TOP FROM WHERE ORDER BY
-- =============================================================

-- 1. Selecionar os 5 primeiros registros da tabela.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
limit 5;

-- 2. Selecionar os 3 primeiros registros onde Quantity seja maior que 10, ordenados por OrderID.
select Quantity as 'Quantidade', OrderID as 'ID do pedido'
from OrderDetail
where Quantity > 10
order by OrderID
limit 3;

-- 3. Selecionar os 7 maiores valores de Quantity, ordenados de forma descendente.
select Quantity as 'Quantidade'
from OrderDetail
order by  Quantity desc
limit 7;

-- 4. Selecionar os 10 primeiros registros onde ProductID seja igual a 4.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID = 4
limit 10;

-- 5. Selecionar os 2 primeiros valores de OrderID, ordenados por OrderDetailID de forma ascendente.
select OrderID as 'ID do pedido'
from OrderDetail
order by OrderDetailID asc
limit 2;

-- 6. Selecionar os 15 primeiros registros da tabela, ordenados por Quantity de forma descendente.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
order by Quantity desc
limit 15;

-- 7. Selecionar os 20 registros com menor valor de Quantity, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
order by Quantity asc, ProductID asc
limit 20;

-- 8. Selecionar os 8 maiores valores de Quantity, ordenados por OrderDetailID.
select Quantity as 'Quantidade'
from OrderDetail
order by Quantity desc, OrderDetailID asc
limit 8;

-- 9. Selecionar os 5 primeiros registros onde ProductID seja maior que 3, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID > 3
order by OrderID asc
limit 5;

-- 10. Selecionar os 10 maiores registros de OrderID, ordenados por Quantity.
select OrderID as 'ID do pedido'
from OrderDetail
order by Quantity asc, OrderID desc
limit 10;

-- 11. Selecionar os 12 primeiros registros onde Quantity seja menor que 15, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail 
where Quantity < 15
order by OrderDetailID asc
limit 12;

-- 12. Selecionar os 6 registros onde ProductID seja múltiplo de 2, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 2 = 0
order by Quantity asc
limit 6;

-- 13. Selecionar os 5 maiores valores de ProductID, ordenados de forma descendente.
select ProductID as 'ID do produto'
from OrderDetail
order by ProductID desc
limit 5;

-- 14. Selecionar os 7 primeiros registros da tabela, ordenados por OrderID e Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
order by OrderID asc, Quantity asc
limit 7;

-- 15. Selecionar os 3 registros onde Quantity seja menor que 8, ordenados por OrderID e ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 8
order by OrderID asc, ProductID asc
limit 3;

-- 16. Selecionar os 9 maiores valores de Quantity, ordenados por OrderID.
select Quantity as 'Quantidade'
from OrderDetail 
order by Quantity desc, OrderID asc 
limit 9;

-- 17. Selecionar os 2 primeiros registros onde OrderID seja igual a 20.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID = 20
limit 2;

-- 18. Selecionar os 10 primeiros registros onde Quantity seja maior que 25, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 25
order by ProductID asc
limit 10;

-- 19. Selecionar os 4 registros onde OrderDetailID seja menor que 50, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID < 50
order by Quantity asc
limit 4;

-- 20. Selecionar os 6 registros onde OrderID seja entre 10 e 30, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID between 10 and 30
order by ProductID asc
limit 6;

-- 21. Selecionar os 8 maiores valores de Quantity, ordenados por OrderDetailID.
select Quantity as 'Quantidade'
from OrderDetail
order by Quantity desc, OrderDetailID asc
limit 8;

-- 22. Selecionar os 5 registros onde ProductID termine com o dígito 7, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID like '%7'
order by OrderID asc
limit 5;

-- 23. Selecionar os 3 primeiros valores de OrderID maiores que 100, ordenados por Quantity.
select OrderID as 'ID do pedido'
from OrderDetail
where OrderID > 100
order by Quantity asc
limit 3;

-- 24. Selecionar os 10 primeiros registros onde Quantity seja maior que 15, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 15
order by OrderDetailID asc
limit 10;

-- 25. Selecionar os 12 menores valores de OrderID, ordenados por ProductID.
select OrderID as 'ID do pedido'
from OrderDetail
order by OrderID asc, ProductID asc
limit 12;

-- 26. Selecionar os 7 registros onde ProductID seja múltiplo de 3, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 3 = 0
order by Quantity asc
limit 7;

-- 27. Selecionar os 10 primeiros registros onde OrderDetailID seja entre 5 e 50, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID between 5 and 50
order by OrderID asc
limit 10;

-- 28. Selecionar os 6 maiores valores de Quantity, ordenados por ProductID.
select Quantity as 'Quantidade'
from OrderDetail
order by Quantity desc, ProductID asc
limit 6;

-- 29. Selecionar os 4 registros onde ProductID seja ímpar, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 2 <> 0
order by Quantity asc
limit 4;

-- 30. Selecionar os 8 primeiros registros onde OrderID seja maior que 15, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID > 15
order by ProductID asc
limit 8;

-- 31. Selecionar os 3 primeiros registros onde Quantity seja menor que 5, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 5
order by OrderID asc
limit 3;

-- 32. Selecionar os 5 registros onde ProductID seja par, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 2 = 0
order by OrderID asc
limit 5;

-- 33. Selecionar os 10 maiores valores de OrderDetailID, ordenados de forma descendente.
select OrderDetailID as 'ID do detalhe'
from OrderDetail
order by OrderDetailID desc
limit 10;

-- 34. Selecionar os 7 registros onde Quantity seja múltiplo de 5, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity % 5 = 0
order by ProductID asc
limit 7;

-- 35. Selecionar os 2 menores valores de ProductID, ordenados por OrderID.
select ProductID as 'ID do produto'
from OrderDetail
order by ProductID asc, OrderID asc
limit 2;

-- 36. Selecionar os 8 primeiros registros onde OrderID termine com o dígito 1, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID like '%1'
order by Quantity asc
limit 8;

-- 37. Selecionar os 4 maiores valores de OrderID, ordenados por OrderDetailID.
select OrderID as 'ID do pedido'
from OrderDetail
order by OrderID desc, OrderDetailID asc
limit 4;

-- 38. Selecionar os 9 registros onde Quantity seja maior que 30, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 30
order by ProductID asc
limit 9;

-- 39. Selecionar os 5 menores valores de ProductID, ordenados por OrderID.
select ProductID as 'ID do produto'
from OrderDetail
order by ProductID asc, OrderID asc
limit 5;

-- 40. Selecionar os 6 maiores valores de OrderDetailID, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe'
from OrderDetail
order by OrderDetailID desc, Quantity asc
limit 6;

-- 41. Selecionar os 10 registros onde OrderID seja ímpar, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID % 2 <> 0
order by Quantity asc
limit 10;

-- 42. Selecionar os 3 primeiros registros onde Quantity seja igual a 20, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity = 20
order by ProductID asc
limit 3;

-- 43. Selecionar os 7 primeiros valores de OrderDetailID menores que 200, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe'
from OrderDetail
where OrderDetailID < 200
order by OrderID asc
limit 7;

-- 44. Selecionar os 5 registros onde OrderID seja entre 100 e 200, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID between 100 and 200
order by ProductID asc
limit 5;

-- 45. Selecionar os 12 maiores valores de Quantity, ordenados por OrderDetailID.
select Quantity as 'Quantidade'
from OrderDetail
order by Quantity desc, OrderDetailID asc
limit 12;

-- 46. Selecionar os 9 primeiros registros onde ProductID seja menor que 10, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID < 10
order by OrderID asc
limit 9;

-- 47. Selecionar os 2 primeiros registros onde OrderID termine com o dígito 0, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID like '%0'
order by Quantity asc
limit 2;

-- 48. Selecionar os 5 menores valores de OrderID, ordenados por ProductID.
select OrderID as 'ID do pedido'
from OrderDetail
order by OrderID asc, ProductID asc
limit 5;

-- 49. Selecionar os 6 primeiros registros onde Quantity seja múltiplo de 4, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity % 4 = 0
order by ProductID asc
limit 6;

-- 50. Selecionar os 10 maiores valores de ProductID, ordenados por Quantity.
select ProductID as 'ID do produto'
from OrderDetail
order by ProductID desc, Quantity asc
limit 10;

-- =============================================================
-- Lista de exercícios: SELECT AVG FROM WHERE ORDER BY
-- =============================================================

-- 1. Calcular a média de Quantity de todos os registros da tabela.


-- 2. Calcular a média de Quantity onde OrderID seja maior que 10.


-- 3. Calcular a média de Quantity onde ProductID seja igual a 5.


-- 4. Calcular a média de Quantity para registros com OrderDetailID menor que 50.


-- 5. Calcular a média de Quantity onde OrderID seja maior que 100.


-- 6. Calcular a média de Quantity onde ProductID seja par.


-- 7. Calcular a média de Quantity onde OrderDetailID seja ímpar.


-- 8. Calcular a média de Quantity onde ProductID esteja entre 5 e 15.


-- 9. Calcular a média de Quantity para registros onde OrderID termine com o dígito 0.


-- 10. Calcular a média de Quantity onde OrderDetailID esteja entre 10 e 30.


-- 11. Escreva um comando para calcular a média da coluna Quantity somente para as linhas onde a quantidade seja maior que 25.


-- 12. Calcule a média da coluna Quantity considerando somente os registros onde a quantidade seja menor que 10.


-- 13. Determine a média da coluna Quantity para os registros onde o ProductID seja maior que 7.


-- 14. Qual é a média da coluna Quantity para os registros com OrderID menor que 20?


-- 15. Filtre os registros onde a quantidade é divisível por 5 e calcule a média de Quantity.


-- 16. Escreva um comando SQL para calcular a média de Quantity somente para os registros com ProductID menor que 12.


-- 17. Determine a média de Quantity para os registros onde o OrderID esteja entre 15 e 30.


-- 18. Escreva uma query que calcule a média de Quantity para os registros onde o OrderDetailID comece com o dígito 2.


-- 19. Calcule a média de Quantity para os registros onde o ProductID seja maior que 10.


-- 20. Determine a média de Quantity para os registros com OrderID que tenham valores ímpares.


-- 21. Filtre os registros onde o ProductID seja divisível por 3 e calcule a média da coluna Quantity.


-- 22. Calcule a média da coluna Quantity para os registros com OrderDetailID maior que 30.


-- 23. Determine a média de Quantity somente para os registros onde a quantidade esteja entre 10 e 20.


-- 24. Escreva uma query que calcule a média de Quantity para os registros onde o OrderID termine com o número 5.


-- 25. Calcule a média de Quantity somente para os registros onde o ProductID esteja nos valores 3, 5 ou 7.


-- 26. Determine a média de Quantity para os registros onde a quantidade não esteja entre 15 e 25.


-- 27. Filtre os registros onde o ProductID esteja entre 5 e 15 e calcule a média de Quantity.


-- 28. Escreva um comando para calcular a média de Quantity somente para os registros onde o OrderID seja igual a 100.


-- 29. Filtre os registros com OrderDetailID entre 100 e 200 e calcule a média de Quantity.


-- 30. Escreva uma query para calcular a média de Quantity considerando apenas as linhas onde a quantidade seja maior que 20.


-- 31. Calcule a média de Quantity para os registros onde o ProductID não esteja nos valores 1, 2 ou 3.


-- 32. Determine a média de Quantity para os registros onde o OrderDetailID termine com o número 2.


-- 33. Escreva uma query que calcule a média de Quantity somente para os registros onde a quantidade seja um número par.


-- 34. Calcule a média de Quantity somente para os registros onde o OrderID seja maior que 200.


-- 35. Determine a média de Quantity para os registros onde o ProductID seja exatamente igual a 10.


-- 36. Filtre os registros onde o OrderDetailID esteja entre 50 e 100 e calcule a média de Quantity.


-- 37. Escreva uma query que calcule a média de Quantity para os registros onde o OrderID comece com o dígito 1.


-- 38. Calcule a média de Quantity para os registros onde o ProductID seja divisível por 5.


-- 39. Determine a média de Quantity para os registros onde a quantidade não esteja nos valores 5, 10 ou 15.


-- 40. Escreva um comando para calcular a média de Quantity somente para os registros com OrderDetailID menores que 10.


-- 41. Calcule a média de Quantity para os registros onde o ProductID seja maior que 20.


-- 42. Determine a média de Quantity para os registros onde a quantidade seja exatamente igual a 15.


-- 43. Escreva uma query que calcule a média de Quantity para os registros com OrderDetailID iguais a 10, 20 ou 30.


-- 44. Filtre os registros onde a quantidade esteja entre 5 e 10 e calcule a média de Quantity.


-- 45. Escreva uma query para calcular a média de Quantity para os registros onde o OrderID não termine com o número 3.


-- 46. Determine a média de Quantity para os registros onde o ProductID seja maior que 30.


-- 47. Calcule a média de Quantity considerando somente os registros onde o OrderID seja menor que 100.


-- 48. Escreva uma query que calcule a média de Quantity para os registros onde o ProductID esteja entre 10 e 50.


-- 49. Determine a média de Quantity para os registros onde a quantidade seja divisível por 4.


-- 50. Filtre os registros onde o OrderDetailID termine com o dígito 0 e calcule a média de Quantity.