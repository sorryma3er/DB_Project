INSERT INTO Branches (branch_id, branch_name, branch_location, branch_contact)
VALUES
    (1, 'TechZone Salaya', 'Salaya, Thailand', '0812345678'),
    (2, 'TechZone Bangkok', 'Bangkok, Thailand', '0823456789');

INSERT INTO Categories (category_id, category_name, warranty_period)
VALUES
    (1, 'Laptops', 24),
    (2, 'Smartphones', 12),
    (3, 'Keyboard', 6),
    (4, 'Mouse', 6),
    (5, 'GamingChair', 6),
    (6, 'Accessories', 1);

INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES
    -- TechZone Salaya
    ('MacBook Air', 'Apple', 37900.00, 15, 1, 1),
    ('Acer Swift 3', 'Acer', 25900.00, 10, 1, 1),
    ('Lenovo IdeaPad', 'Lenovo', 21900.00, 8, 1, 1),
    ('ASUS ZenBook', 'ASUS', 27900.00, 12, 1, 1),
    ('Dell Inspiron', 'Dell', 19900.00, 3, 1, 1),
    ('ROG Strix G17', 'ROG', 32900.00, 10, 1, 2),
    ('Samsung Galaxy Book', 'Samsung', 29900.00, 6, 1, 1),

    -- TechZone Bangkok
    ('MacBook Air', 'Apple', 37900.00, 5, 1, 2),
    ('ROG Strix G17', 'ROG', 32900.00, 7, 1, 2),
    ('Acer Swift 3', 'Acer', 25900.00, 6, 1, 2),
    ('Dell Inspiron', 'Dell', 19900.00, 6, 1, 2),
    ('ASUS ZenBook', 'ASUS', 27900.00, 4, 1, 2),
    ('Lenovo IdeaPad', 'Lenovo', 21900.00, 6, 1, 2),
    ('Samsung Galaxy Book', 'Samsung', 29900.00, 5, 1, 2);

INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES
    -- TechZone Salaya
    ('Samsung Galaxy Z Flip 5', 'Samsung', 44900.00, 20, 2, 1),
    ('iPhone 15 Pro', 'Apple', 48900.00, 6, 2, 1),
    ('Vivo X80', 'Vivo', 27900.00, 18, 2, 1),
    ('Realme 11 Pro', 'Realme', 18900.00, 25, 2, 1),

    -- TechZone Bangkok
    ('iPhone 15 Pro', 'Apple', 48900.00, 10, 2, 2),
    ('Samsung Galaxy Z Flip 5', 'Samsung', 44900.00, 10, 2, 2),
    ('Vivo X80', 'Vivo', 27900.00, 9, 2, 2),
    ('Realme 11 Pro', 'Realme', 18900.00, 15, 2, 2);

INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES
    -- TechZone Salaya
    ('Corsair K70', 'Corsair', 4990.00, 30, 3, 1),
    ('Logitech G Pro', 'Logitech', 3490.00, 40, 3, 1),
    ('HyperX Alloy Elite', 'HyperX', 5990.00, 20, 3, 1),
    ('Razer Huntsman', 'Razer', 6990.00, 25, 3, 1),

    -- TechZone Bangkok
    ('Corsair K70', 'Corsair', 4990.00, 22, 3, 2),
    ('Logitech G Pro', 'Logitech', 3490.00, 28, 3, 2),
    ('HyperX Alloy Elite', 'HyperX', 5990.00, 6, 3, 2),
    ('Razer Huntsman', 'Razer', 6990.00, 15, 3, 2);

INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES
    -- TechZone Salaya
    ('Razer DeathAdder', 'Razer', 2490.00, 30, 4, 1),
    ('Logitech MX Master', 'Logitech', 3690.00, 40, 4, 1),
    ('SteelSeries Rival', 'SteelSeries', 2990.00, 60, 4, 1),
    ('ASUS ROG Spatha', 'ASUS', 5990.00, 35, 4, 1),

    -- TechZone Bangkok
    ('Razer DeathAdder', 'Razer', 2490.00, 24, 4, 2),
    ('Logitech MX Master', 'Logitech', 3690.00, 13, 4, 2),
    ('SteelSeries Rival', 'SteelSeries', 2990.00, 45, 4, 2),
    ('ASUS ROG Spatha', 'ASUS', 5990.00, 20, 4, 2);

INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES
    -- TechZone Salaya
    ('Razer Formula', 'Razer', 8900.00, 12, 5, 1),
    ('Secretlab Titan Evo', 'Secretlab', 14900.00, 10, 5, 1),
    ('AndaSeat Kaiser', 'AndaSeat', 12900.00, 5, 5, 1),
    ('Noblechairs Hero', 'Noblechairs', 14900.00, 8, 5, 1),

    -- TechZone Bangkok
    ('Razer Formula', 'Razer', 8900.00, 8, 5, 2),
    ('Secretlab Titan Evo', 'Secretlab', 14900.00, 7, 5, 2),
    ('AndaSeat Kaiser', 'AndaSeat', 12900.00, 7, 5, 2),
    ('Noblechairs Hero', 'Noblechairs', 14900.00, 6, 5, 2);

INSERT INTO Products (product_name, brand, price, stock, category_id, branch_id)
VALUES
    -- TechZone Salaya
    ('Screen Protector for iPhone', 'Spigen', 690.00, 86, 6, 1),
    ('Laptop Cooling Pad', 'Cooler Master', 1990.00, 26, 6, 1),
    ('USB-C to HDMI Adapter', 'Anker', 990.00, 80, 6, 1),
    ('Portable SSD 1TB', 'Samsung', 3590.00, 50, 6, 1),
    ('Wireless Charger', 'Belkin', 1490.00, 40, 6, 1),
    ('Power Bank 20000mAh', 'Xiaomi', 990.00, 8, 6, 1),
    ('Bluetooth Headset', 'Sony', 2590.00, 23, 6, 1),

    -- TechZone Bangkok
    ('Laptop Cooling Pad', 'Cooler Master', 1990.00, 40, 6, 2),
    ('Screen Protector for iPhone', 'Spigen', 690.00, 25, 6, 2),
    ('USB-C to HDMI Adapter', 'Anker', 990.00, 35, 6, 2),
    ('Bluetooth Headset', 'Sony', 2590.00, 30, 6, 2),
    ('Wireless Charger', 'Belkin', 1490.00, 36, 6, 2),
    ('Power Bank 20000mAh', 'Xiaomi', 990.00, 90, 6, 2),
    ('Portable SSD 1TB', 'Samsung', 3590.00, 23, 6, 2);

INSERT INTO Sales (sale_id, sale_date, total_price, branch_id)
VALUES
    -- TechZone Salaya
    (1, '2024-12-01', 32467.00, 1),
    (2, '2024-12-02', 46682.00, 1),
    (3, '2024-12-05', 33970.00, 1),

    -- TechZone Bangkok
    (1, '2024-12-04', 15800.00, 2),
    (2, '2024-12-07', 35970.00, 2),
    (3, '2024-12-10', 54760.00, 2);

INSERT INTO Sales_detail (sale_id, product_name, quantity, subtotal)
VALUES
    -- TechZone Salaya
    (1, 'Razer Formula', 2, 17800.00),
    (1, 'Secretlab Titan Evo', 1, 14900.00),
    (3, 'ASUS ROG Spatha', 3, 17970.00),

    -- TechZone Bangkok
    (1, 'AndaSeat Kaiser', 2, 25800.00),
    (3, 'Laptop Cooling Pad', 3, 5970.00),
    (3, 'Logitech MX Master', 4, 14760.00);

INSERT INTO Discounts (category_id, discount_percentage, start_date, end_date, branch_id)
VALUES
    -- TechZone Salaya
    (1, 10, '2024-12-01', '2024-12-31', 1),
    (5, 11, '2024-12-03', '2024-12-31', 1),
    (6, 15, '2024-12-01', '2024-12-31', 1),

    -- TechZone Bangkok
    (2, 14, '2024-12-01', '2024-12-31', 2),
    (4, 20, '2024-12-03', '2024-12-25', 2),
    (3, 25, '2024-12-01', '2024-12-25', 2);

INSERT INTO Stock_Transfers (product_name, from_branch_id, to_branch_id, transfer_quantity, transfer_date)
VALUES
    -- TechZone Salaya
    ('AndaSeat Kaiser', 1, 2, 2, '2024-12-07'),
    ('Laptop Cooling Pad', 1, 2, 3, '2024-12-08'),
    ('Logitech MX Master', 1, 2, 5, '2024-12-10'),

    -- TechZone Bangkok
    ('Razer Formula', 2, 1, 1, '2024-12-10'),
    ('Secretlab Titan Evo', 2, 1, 6, '2024-12-12'),
    ('ASUS ROG Spatha', 2, 1, 8, '2024-12-14');