-- Generating possible values for our data structure! I just want to make sure the queries actually work before submitting anything and this is a good way to verify they manufacture the correct value. 

INSERT INTO Categories (category_name) VALUES
    ('Tech Gadgets'),
    ('Fashion'),
    ('Home Appliances'),
    ('Books'),
    ('Groceries'),
    ('Outdoor Equipment'),
    ('Toys'),
    ('Sports Gear'),
    ('Digital Software'),
    ('Clearance');


INSERT INTO Customers (customer_name, email, registration_date) VALUES
    ('John Doe', 'john.doe@email.com', '2016-08-24'),
    ('Jane Smith', 'jane.smith@email.com', '2016-08-25'),
    ('Alice Johnson', 'alice.johnson@email.com', '2016-08-28'),
    ('Robert Brown', 'robert.brown@email.com', '2016-08-30'),
    ('Emily Davis', 'emily.davis@email.com', '2016-09-02'),
    ('Michael Wilson', 'michael.wilson@email.com', '2016-09-05'),
    ('Sarah Garcia', 'sarah.garcia@email.com', '2016-09-08'),
    ('David Lee', 'david.lee@email.com', '2016-09-11'),
    ('Lucas Martinez', 'lucas.martinez@email.com', '2016-09-16'),
    ('Emma White', 'emma.white@email.com', '2016-09-20'),
    ('Oliver Taylor', 'oliver.taylor@email.com', '2016-09-24'),
    ('Ava Anderson', 'ava.anderson@email.com', '2016-09-29'),
    ('Ethan Thomas', 'ethan.thomas@email.com', '2016-10-02'),
    ('Sophia Hernandez', 'sophia.hernandez@email.com', '2016-10-06'),
    ('Benjamin Moore', 'benjamin.moore@email.com', '2016-10-10'),
    ('Mia Jackson', 'mia.jackson@email.com', '2016-10-13'),
    ('William Jones', 'william.jones@email.com', '2016-10-18'),
    ('Lily Rodriguez', 'lily.rodriguez@email.com', '2016-10-23'),
    ('James Perez', 'james.perez@email.com', '2016-10-27'),
    ('Isabella Lopez', 'isabella.lopez@email.com', '2016-10-30'),
    ('Noah Hall', 'noah.hall@email.com', '2016-11-02'),
    ('Ella Turner', 'ella.turner@email.com', '2016-11-07'),
    ('Daniel Young', 'daniel.young@email.com', '2016-11-10'),
    ('Olivia King', 'olivia.king@email.com', '2016-11-14'),
    ('Liam Wright', 'liam.wright@email.com', '2016-11-17'),
    ('Charlotte Walker', 'charlotte.walker@email.com', '2016-11-21'),
    ('Samuel Lewis', 'samuel.lewis@email.com', '2016-11-25'),
    ('Zoe Scott', 'zoe.scott@email.com', '2016-11-28'),
    ('Alexander Evans', 'alexander.evans@email.com', '2016-12-02'),
    ('Luna Green', 'luna.green@email.com', '2016-12-06');

INSERT INTO Products (product_name, category_id, price, stock_quantity) VALUES

    -- Tech Gadgets (category_id 1)
    ('Smartphone Model A', 1, 500.00, 50),
    ('Smartwatch Model B', 1, 200.00, 30),
    ('Wireless Earbuds', 1, 100.00, 100),
    ('Gaming Laptop X1', 1, 1200.00, 20),
    ('VR Headset Z2', 1, 300.00, 40),
    ('Tablet 10-inch', 1, 350.00, 45),
    ('USB-C Hub', 1, 25.00, 200),
    ('Bluetooth Speaker', 1, 75.00, 60),
    ('4K Monitor', 1, 400.00, 25),
    ('Mechanical Keyboard', 1, 80.00, 70),

    -- Fashion (category_id 2)
    ('Summer T-Shirt', 2, 20.00, 100),
    ('Winter Jacket', 2, 80.00, 30),
    ('Running Shoes', 2, 60.00, 40),
    ('Jeans Regular Fit', 2, 45.00, 80),
    ('Sunglasses UV400', 2, 50.00, 150),
    ('Baseball Cap', 2, 15.00, 110),
    ('Backpack', 2, 35.00, 90),
    ('Leather Belt', 2, 22.00, 70),
    ('Wool Scarf', 2, 30.00, 30),
    ('Sneakers', 2, 65.00, 55),

    -- Home Appliances (category_id 3)
    ('Stainless Steel Pot', 3, 40.00, 50),
    ('Blender Pro 3', 3, 70.00, 40),
    ('Cutlery Set', 3, 25.00, 80),
    ('Glass Bowl Set', 3, 30.00, 60),
    ('Microwave Oven', 3, 120.00, 20),
    ('Coffee Maker', 3, 55.00, 45),
    ('Toaster', 3, 28.00, 50),
    ('Fridge 200L', 3, 400.00, 10),
    ('Dishwasher', 3, 320.00, 15),
    ('Knife Set', 3, 60.00, 40),

    -- Books (category_id 4)
    ('Mystery of the Missing Key', 4, 15.00, 40),
    ('Cooking 101', 4, 20.00, 50),
    ('Space: The Final Frontier', 4, 25.00, 35),
    ("Children's Stories Volume 1", 4, 10.00, 80),
    ('History of Ancient Civilizations', 4, 18.00, 60),
    ('Modern Art Interpretations', 4, 30.00, 25),
    ('Photography Basics', 4, 24.00, 20),
    ('The World of Dinosaurs', 4, 12.00, 75),
    ('Beginners Guide to Gardening', 4, 14.00, 50),
    ('Exploring Quantum Physics', 4, 28.00, 30),

    -- Groceries (category_id 5)
    ('Organic Eggs (Dozen)', 5, 5.00, 200),
    ('Whole Wheat Bread', 5, 2.50, 150),
    ('Almond Milk 1L', 5, 3.00, 100),
    ('Granny Smith Apples (kg)', 5, 4.00, 120),
    ('Freshly Ground Coffee (250g)', 5, 10.00, 80),
    ('Dark Chocolate 100g', 5, 2.80, 90),
    ('Spaghetti 500g', 5, 1.50, 110),
    ('Chicken Breast (kg)', 5, 8.00, 70),
    ('Ripe Bananas (kg)', 5, 2.20, 130),
    ('Greek Yogurt 500g', 5, 4.50, 85),

    -- Outdoor Equipment (category_id 6)
    ('Camping Tent (4-person)', 6, 120.00, 40),
    ('Portable BBQ Grill', 6, 60.00, 35),
    ('Fishing Rod', 6, 50.00, 45),
    ('Hiking Backpack 30L', 6, 70.00, 30),
    ('Waterproof Flashlight', 6, 25.00, 60),
    ('Sleeping Bag', 6, 55.00, 50),
    ('Compass', 6, 12.00, 90),
    ('Binoculars 8x40', 6, 80.00, 20),
    ('Mosquito Repellent', 6, 8.00, 85),
    ('Camping Chair', 6, 35.00, 60),

    -- Toys (category_id 7)
    ('Building Blocks Set', 7, 20.00, 75),
    ('Dollhouse', 7, 50.00, 25),
    ('RC Car', 7, 30.00, 40),
    ('Board Game: Adventure Island', 7, 24.00, 60),
    ('Plush Teddy Bear', 7, 18.00, 85),
    ('Kids Puzzle 100 pieces', 7, 12.00, 70),
    ('Musical Toy Keyboard', 7, 28.00, 35),
    ('Action Figure Set', 7, 26.00, 45),
    ("Children's Art Set", 7, 22.00, 55),
    ('Science Experiment Kit', 7, 32.00, 30),

    -- Sports Gear (category_id 8)
    ('Basketball', 8, 25.00, 60),
    ('Tennis Racket', 8, 50.00, 30),
    ('Yoga Mat', 8, 20.00, 80),
    ('Gym Dumbbell Set 10kg', 8, 40.00, 40),
    ('Cycling Helmet', 8, 35.00, 55),
    ('Swimming Goggles', 8, 15.00, 70),
    ('Running Shoes', 8, 60.00, 50),
    ('Fitness Tracker', 8, 90.00, 20),
    ('Badminton Shuttlecock Pack', 8, 10.00, 85),
    ('Football', 8, 30.00, 65),

    -- Digital Software (category_id 9)
    ('Photo Editing Software', 9, 80.00, 40),
    ('Antivirus Software (1 year)', 9, 30.00, 120),
    ('Video Game: Adventure World', 9, 50.00, 60),
    ('3D Modeling Software', 9, 200.00, 25),
    ('Music Production Suite', 9, 150.00, 30),
    ('Office Productivity Suite', 9, 100.00, 70),
    ('Language Learning Software', 9, 60.00, 45),
    ('VPN Service (1 year)', 9, 40.00, 90),
    ('E-book Reader App', 9, 20.00, 80),
    ('Cloud Storage 1TB (1 year)', 9, 70.00, 50),

    -- Clearance (category_id 10)
    ('Old Smartphone Model C', 10, 80.00, 10),
    ('Old Watch Model D', 10, 50.00, 5),
    ('Old Blender Model E', 10, 35.00, 8),
    ('Laptop Bag (Clearance)', 10, 15.00, 60),
    ('Earphones Wired', 10, 5.00, 150),
    ('Desk Lamp', 10, 12.00, 70),
    ('Coffee Mug', 10, 3.00, 250),
    ('Mousepad', 10, 4.00, 180),
    ('Old Fashioned Glass', 10, 5.50, 130),
    ('Plastic Container Set', 10, 8.00, 100);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES 
    (1, '2022-08-24', 1355.80),
    (2, '2022-08-20', 2082.20),
    (3, '2022-08-15', 496.00),
    (4, '2022-08-10', 725.50),
    (5, '2022-08-05', 607.00),
    (6, '2022-07-30', 1546.00),
    (7, '2022-07-25', 223.50),
    (8, '2022-07-20', 210.40),
    (9, '2022-07-15', 610.00),
    (10, '2022-07-10', 168.40),
    (11, '2022-07-05', 551.00),
    (12, '2022-06-30', 157.00),
    (13, '2022-06-25', 633.50),
    (14, '2022-06-20', 332.00),
    (15, '2022-06-15', 742.40),
    (16, '2022-06-10', 1040.50),
    (17, '2022-06-05', 255.00),
    (18, '2022-05-30', 260.00),
    (19, '2022-05-25', 970.00),
    (20, '2022-05-20', 269.40),
    (21, '2022-05-15', 633.00),
    (22, '2022-05-10', 228.00),
    (23, '2022-05-05', 1405.00),
    (24, '2022-04-30', 588.50),
    (25, '2022-04-25', 145.40),
    (26, '2022-04-20', 378.00),
    (27, '2022-04-15', 518.00),
    (28, '2022-04-10', 441.00),
    (29, '2022-04-05', 142.00),
    (30, '2022-03-31', 503.00),
    (5, '2022-03-25', 3890.80),
    (7, '2022-03-20', 650.00),
    (10, '2022-03-15', 410.00),
    (12, '2022-03-10', 968.40),
    (14, '2022-03-05', 255.00),
    (17, '2022-02-28', 691.00),
    (20, '2022-02-23', 572.00),
    (23, '2022-02-18', 407.00),
    (26, '2022-02-13', 320.00),
    (28, '2022-02-08', 316.00),
    (1, '2022-02-03', 381.00),
    (4, '2022-01-29', 483.00),
    (8, '2022-01-24', 215.00),
    (11, '2022-01-19', 188.00),
    (15, '2022-01-14', 2060.40),
    (19, '2022-01-09', 3972.00),
    (22, '2022-01-04', 904.50),
    (27, '2021-12-30', 535.00),
    (29, '2021-12-25', 575.00),
    (14, '2021-12-24', 446.00);

INSERT INTO Order_Items (order_id, product_id, quantity) VALUES

    -- Order 1
    (1, 1, 2),   -- 1000
    (1, 11, 5),  -- 100
    (1, 23, 1),  -- 25
    (1, 34, 3),  -- 30
    (1, 46, 1),  -- 2.80
    (1, 57, 2),  -- 24
    (1, 64, 1),  -- 24
    (1, 72, 3),  -- 150

    -- Order 2
    (2, 4, 1),   -- 1200
    (2, 17, 2),  -- 70
    (2, 28, 2),  -- 800
    (2, 41, 2),  -- 10
    (2, 49, 1),  -- 2.20

    -- Order 3
    (3, 9, 1),   
    (3, 21, 1),  
    (3, 35, 2),  
    (3, 44, 3),  
    (3, 59, 1),  

    -- Order 4
    (4, 17, 2), 
    (4, 29, 1), 
    (4, 8, 2),  
    (4, 37, 1), 
    (4, 47, 1), 
    (4, 58, 2), 

    -- Order 5
    (5, 50, 2), 
    (5, 59, 1), 
    (5, 1, 1),  
    (5, 11, 1), 
    (5, 22, 1), 

    -- Order 6
    (6, 66, 3), 
    (6, 72, 2), 
    (6, 4, 1),  
    (6, 24, 1), 
    (6, 78, 2), 

    -- Order 7
    (7, 63, 1), 
    (7, 15, 1), 
    (7, 26, 1), 
    (7, 42, 1), 
    (7, 52, 1), 
    (7, 68, 1), 

    -- Order 8
    (8, 30, 1), 
    (8, 32, 1), 
    (8, 44, 1), 
    (8, 49, 2), 
    (8, 54, 1), 
    (8, 69, 1), 
    (8, 80, 1), 

    -- Order 9
    (9, 73, 1), 
    (9, 62, 1), 
    (9, 51, 1), 
    (9, 40, 2), 
    (9, 29, 1), 
    (9, 18, 2), 

    -- Order 10
    (10, 27, 2), 
    (10, 45, 1), 
    (10, 49, 2), 
    (10, 52, 1), 
    (10, 59, 1), 
    (10, 19, 1), 

    -- Order 11
    (11, 38, 3), 
    (11, 22, 2), 
    (11, 15, 1), 
    (11, 55, 1), 
    (11, 5, 1),  

    -- Order 12
    (12, 70, 1), 
    (12, 7, 2),  
    (12, 37, 3), 
    (12, 47, 2), 

    -- Order 13
    (13, 42, 1), 
    (13, 9, 1),  
    (13, 13, 1), 
    (13, 19, 1), 
    (13, 35, 2), 
    (13, 60, 1), 
    (13, 54, 1), 

    -- Order 14
    (14, 16, 1), 
    (14, 30, 2), 
    (14, 53, 3), 
    (14, 44, 1), 
    (14, 65, 1), 
    (14, 71, 1), 

    -- Order 15
    (15, 12, 1), 
    (15, 24, 1), 
    (15, 57, 2), 
    (15, 2, 1),  
    (15, 28, 1), 
    (15, 46, 3), 

    -- Order 16
    (16, 1, 1),  
    (16, 10, 1), 
    (16, 48, 2), 
    (16, 50, 1), 
    (16, 11, 2), 
    (16, 28, 1), 

    -- Order 17
    (17, 69, 1), 
    (17, 77, 2), 
    (17, 15, 1), 
    (17, 30, 1), 
    (17, 43, 1),

    -- Order 18
    (18, 31, 1), 
    (18, 41, 2), 
    (18, 51, 1), 
    (18, 61, 2), 
    (18, 71, 3),

    -- Order 19
    (19, 12, 2), 
    (19, 34, 1), 
    (19, 56, 2), 
    (19, 78, 1), 
    (19, 2, 3),

    -- Order 20
    (20, 3, 1), 
    (20, 26, 2), 
    (20, 49, 2), 
    (20, 72, 1), 
    (20, 95, 1),

    -- Order 21
    (21, 15, 1), 
    (21, 28, 1), 
    (21, 41, 3), 
    (21, 54, 2), 
    (21, 67, 1),

    -- Order 22
    (22, 8, 2), 
    (22, 19, 1), 
    (22, 31, 2), 
    (22, 43, 2), 
    (22, 57, 1),

    -- Order 23
    (23, 9, 3), 
    (23, 21, 2), 
    (23, 33, 1), 
    (23, 45, 2), 
    (23, 58, 1),

    -- Order 24
    (24, 6, 1), 
    (24, 18, 2), 
    (24, 30, 3), 
    (24, 42, 1), 
    (24, 66, 1),

    -- Order 25
    (25, 11, 1), 
    (25, 23, 2), 
    (25, 35, 2), 
    (25, 49, 2), 
    (25, 75, 1),

    -- Order 26
    (26, 13, 1), 
    (26, 25, 2), 
    (26, 37, 1), 
    (26, 50, 2), 
    (26, 76, 3),

    -- Order 27
    (27, 14, 2), 
    (27, 29, 1), 
    (27, 39, 2), 
    (27, 53, 1), 
    (27, 79, 3),

    -- Order 28
    (28, 5, 1), 
    (28, 16, 2), 
    (28, 40, 2), 
    (28, 55, 1), 
    (28, 80, 1),

    -- Order 29
    (29, 7, 1), 
    (29, 17, 1), 
    (29, 38, 3), 
    (29, 59, 2), 
    (29, 82, 1),

    -- Order 30
    (30, 10, 2), 
    (30, 20, 1), 
    (30, 44, 2), 
    (30, 60, 2), 
    (30, 84, 1),

    -- Order 31
    (31, 4, 3), 
    (31, 22, 2), 
    (31, 46, 1), 
    (31, 64, 2), 
    (31, 86, 1),

    -- Order 32
    (32, 1, 1), 
    (32, 24, 2), 
    (32, 48, 3), 
    (32, 68, 1), 
    (32, 88, 1),

    -- Order 33
    (33, 3, 1), 
    (33, 27, 2), 
    (33, 52, 2), 
    (33, 70, 2), 
    (33, 90, 1),

    -- Order 34
    (34, 6, 2), 
    (34, 24, 1), 
    (34, 46, 3), 
    (34, 62, 1), 
    (34, 78, 2),

    -- Order 35
    (35, 8, 1), 
    (35, 26, 2), 
    (35, 48, 2), 
    (35, 64, 1), 
    (35, 80, 1),

    -- Order 36
    (36, 10, 3), 
    (36, 28, 1), 
    (36, 50, 2), 
    (36, 66, 1), 
    (36, 82, 1),

    -- Order 37
    (37, 12, 1), 
    (37, 30, 2), 
    (37, 52, 2), 
    (37, 68, 2), 
    (37, 84, 1),

    -- Order 38
    (38, 14, 1), 
    (38, 32, 3), 
    (38, 54, 1), 
    (38, 70, 1), 
    (38, 86, 2),

    -- Order 39
    (39, 16, 2), 
    (39, 34, 1), 
    (39, 56, 2), 
    (39, 72, 1), 
    (39, 88, 3),

    -- Order 40
    (40, 18, 3), 
    (40, 36, 2), 
    (40, 58, 1), 
    (40, 74, 1), 
    (40, 90, 1),

    -- Order 41
    (41, 20, 2), 
    (41, 38, 3), 
    (41, 60, 1), 
    (41, 76, 2), 
    (41, 92, 3),

    -- Order 42
    (42, 22, 1), 
    (42, 40, 1), 
    (42, 62, 2), 
    (42, 78, 3), 
    (42, 94, 1),

    -- Order 43
    (43, 24, 3), 
    (43, 42, 2), 
    (43, 64, 1), 
    (43, 80, 2), 
    (43, 96, 3),

    -- Order 44
    (44, 26, 2), 
    (44, 44, 1), 
    (44, 66, 3), 
    (44, 82, 1), 
    (44, 98, 2),

    -- Order 45
    (45, 28, 3), 
    (45, 46, 3), 
    (45, 68, 2), 
    (45, 84, 3), 
    (45, 2, 1),

    -- Order 46
    (46, 30, 1), 
    (46, 48, 2), 
    (46, 70, 3), 
    (46, 86, 2), 
    (46, 4, 3),

    -- Order 47
    (47, 32, 3), 
    (47, 50, 1), 
    (47, 72, 2), 
    (47, 88, 1), 
    (47, 6, 2),

    -- Order 48
    (48, 34, 2), 
    (48, 52, 3), 
    (48, 74, 3), 
    (48, 90, 2), 
    (48, 8, 1),

    -- Order 49
    (49, 36, 1), 
    (49, 54, 2), 
    (49, 76, 1), 
    (49, 92, 3), 
    (49, 10, 3),

    -- Order 50
    (50, 38, 3), 
    (50, 56, 1), 
    (50, 78, 2), 
    (50, 94, 1), 
    (50, 12, 2);


