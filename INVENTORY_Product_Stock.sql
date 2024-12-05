-- first type in the product name, same as searching by name
SELECT *
FROM Products
WHERE product_name = 'Logitech G304';

--current stock shows:
SELECT stock,branch_id
FROM products
WHERE product_name = 'Logitech G304';

--adding 100 stock for logitech G304 to branch Bangkok
UPDATE Products
SET stock = stock + 100
WHERE product_name = 'Logitech G304' AND branch_id = 2;

SELECT stock
FROM products
WHERE product_name = 'Logitech G304' AND branch_id = 2;


