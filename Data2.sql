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







