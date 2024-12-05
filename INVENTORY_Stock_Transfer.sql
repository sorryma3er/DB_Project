--check for branch 1
SELECT product_name, stock
FROM products
WHERE branch_id = 1;

--check for MacBook Air
SELECT stock, product_id
FROM products
WHERE branch_id = 2 AND product_name = 'MacBook Air';

--Deduct Stock from Source Branch
UPDATE Products
SET stock = stock - 5
WHERE product_name = 'MacBook Air' AND branch_id = 1;


--Add Stock to Destination Branch
UPDATE Products
SET stock = stock + 5
WHERE product_name = 'MacBook Air' AND branch_id = 2;

--Insert a record into the Stock_Transfers table to log the transfer
INSERT INTO Stock_Transfers (product_id, from_branch_id, to_branch_id, transfer_quantity, transfer_date)
VALUES (
           (SELECT product_id
            FROM Products
            WHERE product_name = 'MacBook Air' AND branch_id = 1),
           1,
           2,
           5,
           '2024-12-05'
       );

--verify
SELECT product_name, stock, branch_id
FROM products
WHERE branch_id = 1 AND product_name = 'MacBook Air';

SELECT product_name, stock, branch_id
FROM products
WHERE branch_id = 2 AND product_name = 'MacBook Air';




