CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'sammy'@'localhost' WITH GRANT OPTION;

-- Create the database
CREATE DATABASE IF NOT EXISTS omos;

-- Use the database
USE omos;
show databases;
-- Create Users table

CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(100),
    email VARCHAR(100),
    fname VARCHAR(100),
    lname VARCHAR(100),
    address VARCHAR(100),
    gender VARCHAR(10),
    birthdate DATE,
    phone VARCHAR(15),
    pwd VARCHAR(100)
);

SELECT * FROM customer;

SELECT * FROM customer WHERE uname = 'asd';

-- Medicine----------------------
CREATE TABLE medicines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50),
    name VARCHAR(100),
    ind VARCHAR(255),          -- short for "indication"
    qty INT,
    expD DATE,                 -- expiry date
    price INT,
    manuf VARCHAR(100)         -- manufacturer
);

select *from medicines;
INSERT INTO medicines (code, name, ind, qty, expD, price, manuf) VALUES
('MED001', 'Paracetamol', 'Fever, Headache, Body Pain', 100, '2026-03-15', 25, 'Cipla'),
('MED002', 'Amoxicillin', 'Bacterial Infection', 50, '2025-12-01', 45, 'Sun Pharma'),
('MED003', 'Cetirizine', 'Allergy, Cold', 75, '2026-05-10', 15, 'Dr. Reddy'),
('MED004', 'Ibuprofen', 'Pain Relief, Inflammation', 120, '2027-01-20', 30, 'Abbott'),
('MED005', 'Omeprazole', 'Acidity, Ulcers', 80, '2026-08-30', 35, 'Zydus'),
('MED006', 'Azithromycin', 'Throat Infection, Sinusitis', 40, '2025-10-10', 60, 'Lupin'),
('MED007', 'Dolo 650', 'Fever, Pain Relief', 200, '2026-04-25', 28, 'Micro Labs');


select *from medicines;
-- cart-------------------------------------
CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,       
    medId INT,                               
    medName VARCHAR(255) NOT NULL,            
    manufacturer VARCHAR(255),                
    price DOUBLE NOT NULL,                    -- Total  (price * quantity)
    quantity INT NOT NULL,                    
    FOREIGN KEY (medId) REFERENCES omos.medicines(id) -- Reference to the medicines table
);
select *from cart;
-- emp table -------------------------------------
-- CREATE TABLE emp (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     username VARCHAR(50) NOT NULL UNIQUE,
--     pwd VARCHAR(255) NOT NULL,
--     job VARCHAR(50) NOT NULL
-- );
CREATE TABLE emp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    DOB DATE,
    mobile_no VARCHAR(15),
    gender ENUM('male', 'female'),
    email VARCHAR(100),
    pwd VARCHAR(255) NOT NULL,
    address VARCHAR(200),
    job VARCHAR(50) NOT NULL,
    join_date DATE,
    insure ENUM('Y', 'N'),
    zone ENUM('in', 'out'),
    username VARCHAR(50) NOT NULL UNIQUE
);
INSERT INTO emp (username, pwd, job) VALUES ('admin', 'adminPass', 'admin');

INSERT INTO emp (username, pwd, job) VALUES ('admin1', 'adminPass', 'admin');

select *from emp;
SELECT COUNT(*) FROM emp WHERE job = 'supplier';

CREATE TABLE managerorders (
    mOrderID INT AUTO_INCREMENT PRIMARY KEY,
    managerID VARCHAR(50) NOT NULL,
    orderDate VARCHAR(50) NOT NULL,
    itemQty TEXT NOT NULL,
    orderDescription TEXT NOT NULL,
    orderStatus VARCHAR(20) NOT NULL DEFAULT 'Pending'
);
select *from managerorders;

CREATE TABLE omos.orders (
    o_id INT AUTO_INCREMENT PRIMARY KEY,      -- order ID
    m_id INT NOT NULL,                        -- medicine ID
    u_id INT NOT NULL,                        -- user ID
    o_quantity INT NOT NULL,                  -- quantity ordered
    o_date VARCHAR(255) NOT NULL              -- date of order
);

CREATE TABLE supplier (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    company_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select *from supplier;

CREATE TABLE payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paymentMethod VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    cardNo VARCHAR(20) NOT NULL
);

select *from payment;
CREATE TABLE contactus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    message TEXT,
    issue VARCHAR(100)
);

select *from contactus;
-- ----------------------------------------------------------------------------------------------------------------------- completed till above---------------------------------------------------------------------------------























-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    emp_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Create OrderDetails table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    medicine_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id)
);

-- Create Payments table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Create ContactUs table
CREATE TABLE ContactUs (
    contact_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    message TEXT NOT NULL,
    contact_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


