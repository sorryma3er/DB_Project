-- search by name
SELECT *
FROM Products
WHERE product_name = 'Logitech G304';

--keyword search
SELECT *
FROM Products
WHERE product_name ILIKE '%Mac%';

--filter by category
SELECT P.*
FROM Products P
         JOIN Categories C ON P.category_id = C.category_id
WHERE C.category_name = 'Laptops';

--filter by branch
SELECT *
FROM Products
         JOIN Branches ON Products.branch_id = Branches.branch_id
WHERE Branches.branch_name = 'TechZone Salaya';

--combine filter
SELECT P.*
FROM Products P
         JOIN Categories C ON P.category_id = C.category_id
         JOIN Branches B ON P.branch_id = B.branch_id
WHERE P.product_name ILIKE '%MacBook%'
  AND C.category_name = 'Laptops'
  AND B.branch_name = 'TechZone Salaya';



