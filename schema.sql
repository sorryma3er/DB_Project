CREATE TABLE Branches (
                          branch_id SERIAL PRIMARY KEY,
                          branch_name VARCHAR(100) NOT NULL,
                          branch_location VARCHAR(200) NOT NULL,
                          branch_contact VARCHAR(20)
);

CREATE TABLE Categories (
                            category_id SERIAL PRIMARY KEY,
                            category_name VARCHAR(100) NOT NULL
);

CREATE TABLE Products (
                          product_id SERIAL PRIMARY KEY,
                          product_name VARCHAR(100) NOT NULL,
                          brand VARCHAR(50),
                          price DECIMAL(10, 2) NOT NULL,
                          stock INT NOT NULL,
                          category_id INT REFERENCES Categories(category_id),
                          branch_id INT REFERENCES Branches(branch_id)
);

ALTER TABLE Categories
    ADD warranty_period INT NOT NULL DEFAULT 12;


CREATE TABLE Sales (
                       sale_id SERIAL PRIMARY KEY,
                       sale_date DATE NOT NULL,
                       total_price DECIMAL(10, 2) NOT NULL,
                       branch_id INT REFERENCES Branches(branch_id)
);


CREATE TABLE Sales_Detail (
                              sale_detail_id SERIAL PRIMARY KEY,
                              sale_id INT REFERENCES Sales(sale_id),
                              product_id INT REFERENCES Products(product_id),
                              quantity INT NOT NULL,
                              subtotal DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Discounts (
                           discount_id SERIAL PRIMARY KEY,
                           category_id INT REFERENCES Categories(category_id),
                           discount_percentage DECIMAL(5, 2) NOT NULL,
                           start_date DATE NOT NULL,
                           end_date DATE NOT NULL
);

CREATE TABLE Stock_Transfers (
                                 transfer_id SERIAL PRIMARY KEY,
                                 product_id INT REFERENCES Products(product_id),
                                 from_branch_id INT REFERENCES Branches(branch_id),
                                 to_branch_id INT REFERENCES Branches(branch_id),
                                 transfer_quantity INT NOT NULL,
                                 transfer_date DATE NOT NULL
);





