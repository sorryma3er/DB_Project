INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES ('Logitech G304',
        'Logitech',
        1059.00,
        10,
        4,  -- Mouse category_id
        2); -- To Tech Zone Bangkok

--verify the insertion
SELECT * FROM Products WHERE product_name = 'Logitech G304';

