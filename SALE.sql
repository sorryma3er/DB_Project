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

CREATE OR REPLACE FUNCTION deduct_stock(
    p_branch_id INTEGER,
    p_product_id INTEGER,
    p_quantity INTEGER
) RETURNS INTEGER
    LANGUAGE plpgsql
AS $$
BEGIN
    IF (SELECT stock FROM Products WHERE product_id = p_product_id AND branch_id = p_branch_id) >= p_quantity THEN
        UPDATE Products
        SET stock = stock - p_quantity
        WHERE product_id = p_product_id AND branch_id = p_branch_id;
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
$$;

SELECT product_name
FROM products
WHERE branch_id = 2;

-- Create a sale record to get the sale_id
INSERT INTO sales (sale_id,branch_id, sale_date, total_price)
VALUES
    (1,2, '2024-12-06', 0);


-- For every verify, use a WITH clause to check stock and deduct if sufficient
WITH verify_stock AS (
    SELECT deduct_stock(2,
                        (SELECT product_id
                         FROM Products
                         WHERE product_name = 'Logitech MX Master'
                           AND branch_id = 2),
                        3) AS result
)

INSERT INTO sales_detail (sale_id, product_name, quantity, subtotal, branch_id)
SELECT 1,
       (SELECT product_id FROM Products WHERE product_name = 'Logitech MX Master' AND branch_id = 2),
       3,
       (SELECT price FROM products WHERE product_name = 'Logitech MX Master') * 3,
       2
FROM verify_stock
WHERE result = 1;

SELECT product_name,category_name
FROM products
JOIN categories ON products.category_id = categories.category_id
WHERE product_id = 36;

WITH verify_stock AS (
    SELECT deduct_stock(2,
                        (SELECT product_id
                         FROM Products
                         WHERE product_name = 'MacBook Air'
                           AND branch_id = 2),
                        1) AS result
)

INSERT INTO sales_detail (sale_id, product_name, quantity, subtotal, branch_id)
SELECT 1,
       (SELECT product_id FROM Products WHERE product_name = 'MacBook Air' AND branch_id = 2),
       1,
       (SELECT price FROM products WHERE product_name = 'MacBook Air' AND branch_id = 2) * 1,
       2
FROM verify_stock
WHERE result = 1;




