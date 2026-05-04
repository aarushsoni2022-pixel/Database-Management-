create database store;
use store;

CREATE TABLE customers (
    customer_id     INT PRIMARY KEY AUTO_INCREMENT,
    first_name      VARCHAR(50)  NOT NULL,
    last_name       VARCHAR(50)  NOT NULL,
    email           VARCHAR(100) NOT NULL UNIQUE,
    city            VARCHAR(50)  NOT NULL,
    state           VARCHAR(50)  NOT NULL,
    join_date       DATE         NOT NULL
);

CREATE TABLE products (
    product_id      INT PRIMARY KEY AUTO_INCREMENT,
    product_name    VARCHAR(100) NOT NULL,
    category        VARCHAR(50)  NOT NULL,
    price           DECIMAL(10,2) NOT NULL,
    stock_quantity  INT          NOT NULL DEFAULT 0
);

CREATE TABLE orders (
    order_id        INT PRIMARY KEY AUTO_INCREMENT,
    customer_id     INT          NOT NULL,
    order_date      DATE         NOT NULL,
    order_status    VARCHAR(20)  NOT NULL DEFAULT 'Completed',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE order_items (
    item_id         INT PRIMARY KEY AUTO_INCREMENT,
    order_id        INT          NOT NULL,
    product_id      INT          NOT NULL,
    quantity        INT          NOT NULL DEFAULT 1,
    unit_price      DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id)   REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);



INSERT INTO customers (first_name, last_name, email, city, state, join_date) VALUES
('Aarav',    'Sharma',     'aarav.sharma@email.com',     'Mumbai',       'Maharashtra',    '2024-01-15'),
('Priya',    'Patel',      'priya.patel@email.com',      'Ahmedabad',    'Gujarat',        '2024-02-20'),
('Rohan',    'Gupta',      'rohan.gupta@email.com',      'Delhi',        'Delhi',          '2024-01-08'),
('Ananya',   'Reddy',      'ananya.reddy@email.com',     'Hyderabad',    'Telangana',      '2024-03-12'),
('Vikram',   'Singh',      'vikram.singh@email.com',     'Jaipur',       'Rajasthan',      '2024-04-05'),
('Sneha',    'Iyer',       'sneha.iyer@email.com',       'Chennai',      'Tamil Nadu',     '2024-02-28'),
('Arjun',    'Mehta',      'arjun.mehta@email.com',      'Pune',         'Maharashtra',    '2024-05-10'),
('Kavya',    'Nair',       'kavya.nair@email.com',       'Kochi',        'Kerala',         '2024-03-22'),
('Aditya',   'Joshi',      'aditya.joshi@email.com',     'Bangalore',    'Karnataka',      '2024-06-01'),
('Meera',    'Deshmukh',   'meera.deshmukh@email.com',   'Nagpur',       'Maharashtra',    '2024-01-30'),
('Rahul',    'Verma',      'rahul.verma@email.com',      'Lucknow',      'Uttar Pradesh',  '2024-07-14'),
('Ishita',   'Chopra',     'ishita.chopra@email.com',    'Chandigarh',   'Punjab',         '2024-04-18'),
('Siddharth','Kumar',      'siddharth.kumar@email.com',  'Patna',        'Bihar',          '2024-08-02'),
('Pooja',    'Malhotra',   'pooja.malhotra@email.com',   'Delhi',        'Delhi',          '2024-05-25'),
('Nikhil',   'Rao',        'nikhil.rao@email.com',       'Bangalore',    'Karnataka',      '2024-09-10'),
('Divya',    'Saxena',     'divya.saxena@email.com',     'Bhopal',       'Madhya Pradesh', '2024-06-15'),
('Karthik',  'Menon',      'karthik.menon@email.com',    'Trivandrum',   'Kerala',         '2024-10-01'),
('Riya',     'Agarwal',    'riya.agarwal@email.com',     'Kolkata',      'West Bengal',    '2024-07-20'),
('Manish',   'Tiwari',     'manish.tiwari@email.com',    'Indore',       'Madhya Pradesh', '2024-11-05'),
('Shruti',   'Kapoor',     'shruti.kapoor@email.com',    'Mumbai',       'Maharashtra',    '2024-08-12');


INSERT INTO products (product_name, category, price, stock_quantity) VALUES
('iPhone 15 Pro',             'Electronics',     134900.00,  50),
('Samsung Galaxy S24',        'Electronics',      79999.00,  75),
('Sony WH-1000XM5',          'Electronics',      29990.00, 120),
('MacBook Air M3',            'Electronics',     114900.00,  30),
('Nike Air Max 270',          'Footwear',          12995.00, 200),
('Adidas Ultraboost 23',      'Footwear',          16999.00, 150),
('Levi''s 501 Original Jeans','Fashion',            4999.00, 300),
('Allen Solly Formal Shirt',  'Fashion',            1799.00, 400),
('boAt Airdopes 141',         'Accessories',        1299.00, 500),
('Titan Raga Watch',          'Accessories',        8995.00, 100),
('Prestige Induction Cooktop','Home & Kitchen',     3499.00, 180),
('Philips Air Fryer',         'Home & Kitchen',     7999.00,  90),
('JBL Charge 5 Speaker',      'Electronics',       12999.00, 110),
('Puma RS-X Sneakers',        'Footwear',           8999.00, 170),
('Wildcraft Backpack',         'Accessories',        2499.00, 250);


INSERT INTO orders (customer_id, order_date, order_status) VALUES
(1,  '2024-01-20', 'Completed'),
(2,  '2024-02-25', 'Completed'),
(3,  '2024-01-15', 'Completed'),
(1,  '2024-03-10', 'Completed'),
(4,  '2024-03-18', 'Completed'),
(5,  '2024-04-12', 'Completed'),
(6,  '2024-03-05', 'Completed'),
(3,  '2024-04-22', 'Completed'),
(7,  '2024-05-15', 'Completed'),
(8,  '2024-04-01', 'Completed'),
(1,  '2024-06-08', 'Completed'),
(9,  '2024-06-10', 'Completed'),
(10, '2024-02-14', 'Completed'),
(2,  '2024-07-20', 'Completed'),
(11, '2024-07-18', 'Completed'),
(12, '2024-05-02', 'Completed'),
(3,  '2024-08-14', 'Completed'),
(13, '2024-08-10', 'Completed'),
(5,  '2024-09-05', 'Completed'),
(14, '2024-06-30', 'Completed'),
(15, '2024-09-15', 'Completed'),
(6,  '2024-10-01', 'Cancelled'),
(16, '2024-07-12', 'Completed'),
(1,  '2024-10-20', 'Completed'),
(17, '2024-10-08', 'Completed'),
(18, '2024-08-05', 'Completed'),
(4,  '2024-11-12', 'Completed'),
(19, '2024-11-10', 'Completed'),
(20, '2024-09-01', 'Completed'),
(2,  '2024-12-01', 'Completed'),
(3,  '2024-12-15', 'Completed'),
(8,  '2024-11-25', 'Completed'),
(9,  '2024-12-20', 'Completed'),
(5,  '2025-01-10', 'Completed'),
(1,  '2025-01-25', 'Completed'),
(14, '2025-02-05', 'Completed'),
(7,  '2025-02-18', 'Completed'),
(10, '2025-03-01', 'Completed'),
(12, '2025-03-10', 'Shipped'),
(20, '2025-03-15', 'Processing');


INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
-- Order 1 (Aarav)
(1,  1,  1, 134900.00),
(1,  9,  2,  1299.00),
-- Order 2 (Priya)
(2,  5,  1, 12995.00),
(2,  8,  3,  1799.00),
-- Order 3 (Rohan)
(3,  4,  1, 114900.00),
-- Order 4 (Aarav)
(4,  3,  1, 29990.00),
(4,  15, 1,  2499.00),
-- Order 5 (Ananya)
(5,  2,  1, 79999.00),
(5,  10, 1,  8995.00),
-- Order 6 (Vikram)
(6,  6,  2, 16999.00),
-- Order 7 (Sneha)
(7,  7,  2,  4999.00),
(7,  11, 1,  3499.00),
-- Order 8 (Rohan)
(8,  13, 1, 12999.00),
(8,  9,  3,  1299.00),
-- Order 9 (Arjun)
(9,  12, 1,  7999.00),
(9,  8,  2,  1799.00),
-- Order 10 (Kavya)
(10, 1,  1, 134900.00),
-- Order 11 (Aarav)
(11, 2,  1, 79999.00),
(11, 14, 1,  8999.00),
-- Order 12 (Aditya)
(12, 5,  2, 12995.00),
-- Order 13 (Meera)
(13, 3,  1, 29990.00),
(13, 15, 2,  2499.00),
-- Order 14 (Priya)
(14, 11, 2,  3499.00),
(14, 7,  1,  4999.00),
-- Order 15 (Rahul)
(15, 1,  1, 134900.00),
-- Order 16 (Ishita)
(16, 10, 1,  8995.00),
(16, 6,  1, 16999.00),
-- Order 17 (Rohan)
(17, 12, 1,  7999.00),
(17, 14, 2,  8999.00),
-- Order 18 (Siddharth)
(18, 9,  4,  1299.00),
(18, 8,  2,  1799.00),
-- Order 19 (Vikram)
(19, 4,  1, 114900.00),
-- Order 20 (Pooja)
(20, 3,  2, 29990.00),
(20, 5,  1, 12995.00),
-- Order 21 (Nikhil)
(21, 13, 2, 12999.00),
-- Order 22 (Sneha — Cancelled)
(22, 2,  1, 79999.00),
-- Order 23 (Divya)
(23, 7,  3,  4999.00),
(23, 15, 1,  2499.00),
-- Order 24 (Aarav)
(24, 6,  1, 16999.00),
(24, 10, 1,  8995.00),
-- Order 25 (Karthik)
(25, 1,  1, 134900.00),
-- Order 26 (Riya)
(26, 11, 1,  3499.00),
(26, 9,  2,  1299.00),
-- Order 27 (Ananya)
(27, 4,  1, 114900.00),
-- Order 28 (Manish)
(28, 14, 1,  8999.00),
(28, 8,  3,  1799.00),
-- Order 29 (Shruti)
(29, 12, 1,  7999.00),
(29, 5,  2, 12995.00),
-- Order 30 (Priya)
(30, 2,  1, 79999.00),
-- Order 31 (Rohan)
(31, 3,  1, 29990.00),
(31, 6,  1, 16999.00),
-- Order 32 (Kavya)
(32, 13, 1, 12999.00),
(32, 7,  2,  4999.00),
-- Order 33 (Aditya)
(33, 10, 2,  8995.00),
-- Order 34 (Vikram)
(34, 9,  5,  1299.00),
(34, 15, 2,  2499.00),
-- Order 35 (Aarav)
(35, 4,  1, 114900.00),
-- Order 36 (Pooja)
(36, 1,  1, 134900.00),
(36, 8,  1,  1799.00),
-- Order 37 (Arjun)
(37, 2,  1, 79999.00),
(37, 11, 1,  3499.00),
-- Order 38 (Meera)
(38, 6,  1, 16999.00),
(38, 14, 1,  8999.00),
-- Order 39 (Ishita)
(39, 12, 2,  7999.00),
-- Order 40 (Shruti)
(40, 3,  1, 29990.00),
(40, 13, 1, 12999.00);


#total revenue 

SELECT SUM(order_items.quantity * order_items.unit_price) AS total_revenue
FROM order_items INNER JOIN orders ON order_items.order_id = orders.order_id
WHERE orders.order_status = 'Completed';

#top 5 coustmer by revnue 
SELECT CONCAT(first_name, ' ', last_name) AS customer_name,
SUM(quantity * unit_price) AS total_spent FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
WHERE order_status = 'Completed'
GROUP BY customers.customer_id
ORDER BY total_spent DESC
LIMIT 5;

#top 5 selling product

SELECT product_name,SUM(quantity) AS units_sold
FROM products
JOIN order_items ON products.product_id = order_items.product_id
JOIN orders ON order_items.order_id = orders.order_id
WHERE order_status = 'Completed'
GROUP BY products.product_id
ORDER BY units_sold DESC
LIMIT 5;

#revnue by city

SELECT city,
SUM(quantity * unit_price) AS total_revenue
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
WHERE order_status = 'Completed'
GROUP BY city
ORDER BY total_revenue DESC;

#monthly revenue 


SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(quantity * unit_price) AS total_revenue
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
WHERE order_status = 'Completed'
GROUP BY month
ORDER BY month;





