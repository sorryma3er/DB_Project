CREATE OR REPLACE FUNCTION update_total_price()
    RETURNS TRIGGER AS $$
BEGIN
    -- Calculate the total price by summing up all subtotals for the sale_id
    UPDATE Sales
    SET total_price = (
        SELECT COALESCE(SUM(subtotal), 0)
        FROM Sales_Detail
        WHERE sale_id = NEW.sale_id
    )
    WHERE sale_id = NEW.sale_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER calculate_total_price
    AFTER INSERT OR UPDATE OR DELETE
    ON Sales_Detail
    FOR EACH ROW
EXECUTE FUNCTION update_total_price();

INSERT INTO Sales (branch_id, sale_date, total_price)
VALUES
    (1, '2024-12-01', 0),  -- Sale ID 1
    (1, '2024-12-02', 0),  -- Sale ID 2
    (1, '2024-12-03', 0),  -- Sale ID 3
    (2, '2024-12-01', 0),  -- Sale ID 4
    (2, '2024-12-02', 0),  -- Sale ID 5
    (2, '2024-12-03',0);   -- Sale ID 6

INSERT INTO Sales_Detail (sale_id, product_id, quantity, subtotal)
VALUES
    (1, 1, 1, 37900.00),  -- MacBook Air (1 unit)
    (1, 15, 2, 4980.00), -- Razer DeathAdder (2 units)
    (1, 23, 1, 4990.00); -- Corsair K70 (1 unit)

INSERT INTO Sales_Detail (sale_id, product_id, quantity, subtotal)
VALUES
    (2, 2, 1, 25900.00), -- Acer Swift 3 (1 unit)
    (2, 27, 2, 5980.00), -- SteelSeries Rival (2 units)
    (2, 6, 1, 29900.00); -- Samsung Galaxy Book (1 unit)

INSERT INTO Sales_Detail (sale_id, product_id, quantity, subtotal)
VALUES
    (3, 8, 1, 44900.00), -- Samsung Galaxy Z Flip 5 (1 unit)
    (3, 15, 1, 2490.00), -- Razer DeathAdder (1 unit)
    (3, 24, 1, 1990.00); -- Laptop Cooling Pad (1 unit)

INSERT INTO Sales_Detail (sale_id, product_id, quantity, subtotal)
VALUES
    (4, 1, 1, 37900.00), -- MacBook Air (1 unit)
    (4, 22, 1, 11000.00), -- Secretlab Titan Evo (1 unit)
    (4, 31, 2, 2990.00); -- Wireless Charger (2 units)

INSERT INTO Sales_Detail (sale_id, product_id, quantity, subtotal)
VALUES
    (5, 2, 1, 25900.00), -- Acer Swift 3 (1 unit)
    (5, 8, 1, 44900.00), -- Samsung Galaxy Z Flip 5 (1 unit)
    (5, 27, 3, 8970.00); -- SteelSeries Rival (3 units)

INSERT INTO Sales_Detail (sale_id, product_id, quantity, subtotal)
VALUES
    (6, 6, 1, 29900.00), -- Samsung Galaxy Book (1 unit)
    (6, 24, 1, 1990.00), -- Laptop Cooling Pad (1 unit)
    (6, 15, 2, 4980.00); -- Razer DeathAdder (2 units)






