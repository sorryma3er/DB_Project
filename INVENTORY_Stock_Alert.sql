-- set the threshold at 10 for salaya branch
SELECT product_name, stock
FROM Products
WHERE stock <= 10
  AND branch_id = 1;

