CREATE TABLE CUSTOMER (
CUSTOMER_ID INT PRIMARY KEY, 
CUSTOMER_BUYAMOUNT INT, 
CUSTOMER_TOTALPAYMENT DECIMAL(5,2), 
CUSTOMER_PAYMENTMETHOD VARCHAR(45));

SELECT * FROM bookstore.CUSTOMER;

INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_BUYAMOUNT, CUSTOMER_TOTALPAYMENT, CUSTOMER_PAYMENTMETHOD)
VALUES
(1, 2, 59.98, 'Credit Card'),
(2, 1, 39.99, 'Cash'),
(3, 3, 74.97, 'Online Transfer'),
(4, 2, 39.98, 'Credit Card'),
(5, 1, 34.99, 'Cash'),
(6, 4, 111.96, 'PayPal'),
(7, 2, 59.98, 'Credit Card'),
(8, 1, 14.99, 'Cash'),
(9, 3, 59.97, 'Online Transfer'),
(10 ,2, 89.98, 'Credit Card'),
(11, 1, 32.99, 'Cash'),
(12, 2, 99.98, 'PayPal'),
(13, 1, 22.99, 'Credit Card'),
(14, 3, 89.97, 'Online Transfer'),
(15, 2, 75.98, 'Credit Card'),
(16, 1, 17.99, 'Cash'),
(17, 4, 107.96, 'PayPal'),
(18, 2, 63.98, 'Credit Card'),
(19, 1, 42.99, 'Cash'),
(20, 3, 47.97, 'Online Transfer');

CREATE TABLE SUPPLIER(
SUPPLIER_ID INT PRIMARY KEY, 
SUPPLIER_NAME VARCHAR(45),
 SUPPLIER_TELE VARCHAR(45),
 SUPPLIER_ADDRESS  VARCHAR(45), 
 SUPPLIER_EMAIL  VARCHAR(45),
 BOOK_ID int,
 FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID));
 
 INSERT INTO SUPPLIER (SUPPLIER_ID, SUPPLIER_NAME, SUPPLIER_TELE, SUPPLIER_ADDRESS, SUPPLIER_EMAIL,BOOK_ID )
VALUES
(1, 'Malik Book Distributors', '06-2345678', '45 Jalan Buku Baru, Merlimau, Melaka', 'malikbooks@email.com','101'),
(2, 'TechRead Solutions', '06-3456789', '28 Teknologi Street, Merlimau, Melaka', 'techread@email.com','102'),
(3, 'MegaPrint Publishing', '06-4567890', '12 Percetakan Avenue, Merlimau, Melaka', 'megaprint@email.com','103'),
(4, 'GreenLeaf Paperworks', '06-5678901', '33 Kertas Road, Merlimau, Melaka', 'greenleaf@email.com','104'),
(5, 'Gemstone Publishers', '06-6789012', '17 Batu Permata Lane, Merlimau, Melaka', 'gemstone@email.com','105'),
(6, 'BookCraft Malaysia', '06-7890123', '55 Kraf Buku Street, Merlimau, Melaka', 'bookcraft@email.com','106'),
(7, 'Merlimau Stationery Mart', '06-8901234', '99 Alat Tulis Road, Merlimau, Melaka', 'merlimaustationery@email.com','107'),
(8, 'PrintMaster Supplies', '06-9012345', '72 CetakCemerlang Plaza, Merlimau, Melaka', 'printmaster@email.com','108'),
(9, 'Innovative Inks Co.', '06-1234567', '21 Tinta Terbaik Street, Merlimau, Melaka', 'innovativeinks@email.com','109'),
(10, 'Malacca Book Haven', '06-2345678', '8 Buku Bahagia Lane, Merlimau, Melaka', 'malaccabookhaven@email.com','110'),
(11, 'TropicalPrints Publishers', '06-3456789', '37 Tropika Avenue, Merlimau, Melaka', 'tropicalprints@email.com','111'),
(12, 'EduSmart Learning Solutions', '06-4567890', '14 Jalan Pendidikan, Merlimau, Melaka', 'edusmart@email.com','112'),
(13, 'BlueSky Book Suppliers', '06-5678901', '50 LangitBiru Road, Merlimau, Melaka', 'blueskybooks@email.com','113'),
(14, 'Merlimau Arts & Crafts', '06-6789012', '66 Seni Street, Merlimau, Melaka', 'merlimauarts@email.com','114'),
(15, 'Melaka Bookbinders', '06-7890123', '25 Jalan Jilid, Merlimau, Melaka', 'melakabookbinders@email.com','115'),
(16, 'Mythical Manuscripts', '06-8901234', '42 Mitos Road, Merlimau, Melaka', 'mythicalmanuscripts@email.com','116'),
(17, 'HitechPrints Solutions', '06-9012345', '19 Teknologi Tinggi Plaza, Merlimau, Melaka', 'hitechprints@email.com','117'),
(18, 'Rainforest Publishing', '06-1234567', '63 Hutan Avenue, Merlimau, Melaka', 'rainforest@email.com','118'),
(19, 'Merlimau Maps & More', '06-2345678', '10 Peta Lane, Merlimau, Melaka', 'merlimaumaps@email.com','119'),
(20, 'Sunrise Book Suppliers', '06-3456789', '31 Matahari Street, Merlimau, Melaka', 'sunrisebooks@email.com','120');

CREATE TABLE BOOK(
BOOK_ID INT PRIMARY KEY, 
BOOK_TITLE VARCHAR(45), 
BOOK_GENRE VARCHAR(45), 
BOOK_STOCKQUANTITY INT, 
BOOK_PRICE DECIMAL(5,2)
);

INSERT INTO BOOK (BOOK_ID, BOOK_TITLE, BOOK_GENRE, BOOK_STOCKQUANTITY, BOOK_PRICE)
VALUES
(101, 'The Enchanted Forest', 'Fantasy', 25, 29.99),
(102, 'Programming Basics', 'Education', 50, 39.99),
(103, 'Cooking Delights', 'Cookbook', 40, 24.99),
(104, 'Detective Chronicles', 'Mystery', 30, 19.99),
(105, 'Historical Journeys', 'History', 35, 34.99),
(106, 'Mindful Living', 'Self-Help', 20, 27.99),
(107, 'Sci-Fi Wonders', 'Science Fiction', 45, 29.99),
(108, 'Romantic Escapes', 'Romance', 15, 14.99),
(109, 'Health and Fitness', 'Wellness', 55, 19.99),
(110, 'Art and Creativity', 'Art', 30, 44.99),
(111, 'Travel Diaries', 'Travel', 40, 32.99),
(112, 'Business Strategies', 'Business', 25, 49.99),
(113, 'Mystery Unraveled', 'Mystery', 20, 22.99),
(114, 'Natures Wonders', 'Nature', 35, 29.99),
(115, 'The Quantum Leap', 'Science', 25, 37.99),
(116, 'Love and Loss', 'Romance', 10, 17.99),
(117, 'Gourmet Recipes', 'Cookbook', 40, 26.99),
(118, 'Epic Adventures', 'Adventure', 30, 31.99),
(119, 'Tech Innovations', 'Technology', 50, 42.99),
(120, 'Poetry Collection', 'Poetry', 15, 15.99);
 
 CREATE TABLE EMPLOYBOOK(
 BOOK_ID INT,
 EMPLOYEE_ID INT, 
 MANAGE_TIME VARCHAR(45) , 
 MANAGE_DATE VARCHAR(45),
 PRIMARY KEY (BOOK_ID,EMPLOYEE_ID),
 FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID),
 FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID)) ;
 
 
 INSERT INTO EMPLOYBOOK (BOOK_ID, EMPLOYEE_ID, MANAGE_TIME, MANAGE_DATE)
VALUES
(101, 1, '10:00 AM', '2024-01-08'),
(102, 3, '02:30 PM', '2024-01-09'),
(103, 2, '11:45 AM', '2024-01-10'),
(104, 5, '04:00 PM', '2024-01-11'),
(105, 4, '12:15 PM', '2024-01-12'),
(106, 6, '03:30 PM', '2024-01-13'),
(107, 8, '09:00 AM', '2024-01-14'),
(108, 9, '01:45 PM', '2024-01-15'),
(109, 2, '10:30 AM', '2024-01-16'),
(110, 3, '05:15 PM', '2024-01-17'),
(111, 5, '02:00 PM', '2024-01-18'),
(112, 7, '12:30 PM', '2024-01-19'),
(113, 8, '03:45 PM', '2024-01-20'),
(114, 2, '11:00 AM', '2024-01-21'),
(115, 3, '01:30 PM', '2024-01-22'),
(116, 8, '04:45 PM', '2024-01-23'),
(117, 5, '02:15 PM', '2024-01-24'),
(118, 6, '10:45 AM', '2024-01-25'),
(119, 1, '06:30 PM', '2024-01-26'),
(120, 2, '03:00 PM', '2024-01-27');


CREATE TABLE EMPLOYEE(
 EMPLOYEE_ID INT PRIMARY KEY,
 EMPLOYEE_NAME VARCHAR(45),
 EMPLOYEE_POST VARCHAR(45), 
 EMPLOYEE_TELE VARCHAR(45), 
 EMPLOYEE_SHIFT VARCHAR(45));
 
 
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_POST, EMPLOYEE_TELE, EMPLOYEE_SHIFT)
VALUES
(1, 'Ahmad Abdullah', 'Manager', '012-3456789', 'Day'),
(2, 'Siti Hajar', 'Sales Associate', '011-9876543', 'Evening'),
(3, 'Lim Wei Chen', 'Clerk', '016-7890123', 'Day'),
(4, 'Rajesh Kumar', 'IT Specialist', '019-1234567', 'Evening'),
(5, 'Aishah Mohamed', 'Cashier', '017-2345678', 'Day'),
(6, 'Tom Johnson', 'Security Guard', '013-3456789', 'Evening'),
(7, 'Anna Lee', 'Customer Service', '014-4567890', 'Day'),
(8, 'Ravi Menon', 'Inventory Manager', '018-5678901', 'Evening'),
(9, 'Mei Ling', 'Storekeeper', '015-6789012', 'Day'),
(10, 'David Williams', 'Cleaner', '013-7890123', 'Evening'),
(11, 'Anisah Bakar', 'Assistant Manager', '011-8901234', 'Day'),
(12, 'John Smith', 'Data Entry Clerk', '019-9012345', 'Evening'),
(13, 'Fatimah Abdullah', 'Supervisor', '017-1234567', 'Day'),
(14, 'Hassan Ali', 'Book Expert', '016-2345678', 'Evening'),
(15, 'Yuki Tanaka', 'Translator', '015-3456789', 'Day'),
(16, 'Chen Wei', 'Graphic Designer', '014-4567890', 'Evening'),
(17, 'Maria Rodriguez', 'HR Manager', '012-5678901', 'Day'),
(18, 'Suresh Kumar', 'Maintenance Crew', '018-6789012', 'Evening'),
(19, 'Sophie Williams', 'Event Coordinator', '013-7890123', 'Day'),
(20, 'Alex Tan', 'Social Media Manager', '019-8901234', 'Evening');

CREATE TABLE BOOK_CUS(
 BOOK_ID INT,
 CUSTOMER_ID INT,
 BUY_TIME VARCHAR(45), 
 BUY_DATE VARCHAR(45),
 PRIMARY KEY (BOOK_ID,CUSTOMER_ID),
 FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID),
 FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID));
 
 INSERT INTO BOOK_CUS (BOOK_ID, CUSTOMER_ID, BUY_TIME, BUY_DATE)
VALUES
(101, 1, '12:30 PM', '2024-01-08'),
(102, 2, '03:45 PM', '2024-01-09'),
(103, 3, '09:15 AM', '2024-01-10'),
(104, 1, '05:20 PM', '2024-01-11'),
(105, 2, '01:00 PM', '2024-01-12'),
(106, 3, '04:30 PM', '2024-01-13'),
(107, 1, '11:00 AM', '2024-01-14'),
(108, 2, '02:45 PM', '2024-01-15'),
(109, 3, '10:30 AM', '2024-01-16'),
(110, 1, '06:15 PM', '2024-01-17'),
(111, 2, '02:30 PM', '2024-01-18'),
(112, 3, '01:00 PM', '2024-01-19'),
(113, 1, '04:15 PM', '2024-01-20'),
(114, 2, '10:30 AM', '2024-01-21'),
(115, 3, '01:45 PM', '2024-01-22'),
(116, 1, '05:00 PM', '2024-01-23'),
(117, 2, '02:15 PM', '2024-01-24'),
(118, 3, '11:45 AM', '2024-01-25'),
(119, 1, '06:30 PM', '2024-01-26'),
(120, 2, '03:15 PM', '2024-01-27');


ALTER TABLE book_cus
MODIFY COLUMN BUY_DATE DATE;

