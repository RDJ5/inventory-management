-- Inserting data into Brands table
INSERT INTO brands (bid, bname) VALUES (1, 'Apple');
INSERT INTO brands (bid, bname) VALUES (2, 'Samsung');
INSERT INTO brands (bid, bname) VALUES (3, 'Nike');
INSERT INTO brands (bid, bname) VALUES (4, 'Fortune');

-- Inserting data into Inventory User table
INSERT INTO inv_user (user_id, name, password, last_login, user_type) VALUES 
    ('vidit@gmail.com', 'Vidit', '1234', '2018-10-31 12:40:00', 'admin'),
    ('harsh@gmail.com', 'Harsh Khanelwal', '1111', '2018-10-30 10:20:00', 'Manager'),
    ('prashant@gmail.com', 'Prashant', '0011', '2018-10-29 10:20:00', 'Accountant');

-- Inserting data into Categories table
INSERT INTO categories (cid, category_name) VALUES (1, 'Electronics');
INSERT INTO categories (cid, category_name) VALUES (2, 'Clothing');
INSERT INTO categories (cid, category_name) VALUES (3, 'Grocery');

-- Inserting data into Stores table
INSERT INTO stores (sid, sname, address, mobno) VALUES 
    (1, 'Ram Kumar', 'Katpadi, Vellore', 9999999999),
    (2, 'Rakesh Kumar', 'Chennai', 8888555541),
    (3, 'Suraj', 'Haryana', 7777555541);

-- Inserting data into Products table
INSERT INTO product (pid, cid, bid, sid, pname, p_stock, price, added_date) VALUES 
    (1, 1, 1, 1, 'iPhone', 4, 45000.00, '2018-10-31'),
    (2, 1, 1, 1, 'Airpods', 3, 19000.00, '2018-10-27'),
    (3, 1, 1, 1, 'Smart Watch', 3, 19000.00, '2018-10-27'),
    (4, 2, 3, 2, 'Air Max', 6, 7000.00, '2018-10-27'),
    (5, 3, 4, 3, 'Refined Oil', 6, 750.00, '2018-10-25');

-- Inserting data into Provides table
INSERT INTO provides (bid, sid, discount) VALUES 
    (1, 1, 12.00),
    (2, 2, 7.00),
    (3, 3, 15.00),
    (1, 2, 7.00),
    (4, 2, 19.00),
    (4, 3, 20.00);

-- Inserting data into Customer Cart table
INSERT INTO customer_cart (cust_id, name, mobno) VALUES 
    (1, 'Ram', 9876543210),
    (2, 'Shyam', 7777777777),
    (3, 'Mohan', 7777777775);

-- Inserting data into Select Product table
INSERT INTO select_product (cust_id, pid, quantity) VALUES 
    (1, 2, 2),
    (1, 3, 1),
    (2, 3, 3),
    (3, 2, 1);

-- Inserting data into Transaction table
INSERT INTO transaction (id, total_amount, paid, due, gst, discount, payment_method, cart_id) VALUES 
    (1, 57000.00, 20000.00, 5000.00, 350.00, 350.00, 'card', 1),
    (2, 57000.00, 57000.00, 0.00, 570.00, 570.00, 'cash', 2),
    (3, 19000.00, 17000.00, 2000.00, 190.00, 190.00, 'cash', 3);

-- Inserting data into Invoice table
INSERT INTO invoice (item_no, product_name, quantity, net_price, transaction_id) VALUES 
    (1, 'iPhone', 1, 45000.00, 1),
    (2, 'Airpods', 2, 38000.00, 1),
    (3, 'Smart Watch', 1, 19000.00, 2),
    (4, 'Air Max', 3, 21000.00, 2),
    (5, 'Refined Oil', 4, 3000.00, 3);
