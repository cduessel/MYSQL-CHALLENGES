SELECT 
p.ProductName as 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details as od
ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY 1;
