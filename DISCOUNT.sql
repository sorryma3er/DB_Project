CREATE FUNCTION apply_discount()
    RETURNS TRIGGER AS $$
BEGIN
    --Check is today during the discount period
    IF NEW.start_date <= CURRENT_DATE AND NEW.end_date >= CURRENT_DATE THEN
        UPDATE Products
        SET price = price - (price * NEW.discount_percentage / 100)
        WHERE category_id = NEW.category_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to call the function whenever a discount is added or updated
CREATE TRIGGER trigger_apply_discount
    AFTER INSERT OR UPDATE
    ON Discounts
    FOR EACH ROW
EXECUTE FUNCTION apply_discount();

--see salaya laptop category price before applying discounts
SELECT product_id, product_name, category_id, price, branch_id
FROM Products
WHERE category_id = (SELECT category_id FROM Categories WHERE category_name = 'Laptops')
  AND branch_id = (SELECT branch_id FROM Branches WHERE branch_name = 'TechZone Salaya');

--discount for laptop 30 percent in salaya branch
INSERT INTO Discounts (category_id, discount_percentage, start_date, end_date, branch_id)
VALUES (
           (SELECT category_id FROM Categories WHERE category_name = 'Laptops'),
           30,
           '2024-12-05',
           '2024-12-12',
           (SELECT branch_id FROM Branches WHERE branch_name = 'Salaya')
       );

--check current price
SELECT product_id, product_name, price, category_id, branch_id
FROM Products
WHERE category_id = (SELECT category_id FROM Categories WHERE category_name = 'Laptops')
  AND branch_id = (SELECT branch_id FROM Branches WHERE branch_name = 'TechZone Salaya');


