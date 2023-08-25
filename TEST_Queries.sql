SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Order_Items;

-- I just want to easily calculate the order price without joining tables
SELECT 
    order_id,
    SUM((SELECT price FROM Products WHERE product_id = oi.product_id) * quantity) AS total_price
FROM Order_Items AS oi
GROUP BY order_id
ORDER BY order_id;

-- 1. Retrieve the names of products in the "Tech Gadgets" category with a price higher than the average price of all products.
SELECT product_name
FROM Products                                                           -- Look in the Products table
JOIN Categories ON Products.category_id = Categories.category_id        -- Connect Products and Categories based on their IDs
WHERE category_name = 'Tech Gadgets'                                    -- Only consider products in the 'Tech Gadgets' category
AND price > (SELECT AVG(price) FROM Products);                          -- The price should be greater than the average price of all products

-- 2. Identify the categories that have the highest total revenue, calculated by summing the prices of all products sold within each category.
WITH CategoryRevenue AS (
    SELECT c.category_id, c.category_name, SUM(p.price * oi.quantity) AS revenue        -- Multiply each product's price by its quantity sold, and then sum these up for each category.
    FROM Categories c                                                                   -- Check Categories table and alias Categories
    JOIN Products p ON c.category_id = p.category_id                                    -- Connect Categories and Products based on IDs, alias Products
    JOIN Order_Items oi ON p.product_id = oi.product_id                                 -- Connect Products and Order_Items based on IDs
    GROUP BY c.category_id, c.category_name                                             -- Group results by category
)

SELECT category_name, revenue                               -- Fetch the category names and their respective revenues
FROM CategoryRevenue                                        -- From our computed table above
WHERE revenue = (SELECT MAX(revenue) FROM CategoryRevenue); -- But only show the one(s) with the highest revenue

-- 3. List the customer names who have placed orders for at least 3 different categories of products.
SELECT cu.customer_name                           -- Get customer names
FROM Customers cu                                 -- Check Customers, alias Customers
JOIN Orders o ON cu.customer_id = o.customer_id   -- Join Customers and Orders on IDs, alias Orders
JOIN Order_Items oi ON o.order_id = oi.order_id   -- ...Orders and Order_Items on IDs, alias Order_Items
JOIN Products p ON oi.product_id = p.product_id   -- ...Order_Items and Products on IDs, alias Products
GROUP BY cu.customer_name                         -- Group results by customer name
HAVING COUNT(DISTINCT p.category_id) >= 3;        -- Show customers who have products from at least 3 categories

-- 4. Calculate the average number of items included in orders. Consider only orders that contain more items than the average.
WITH OrderAverage AS (                          -- Make table to calc order average in quantity
    SELECT order_id, COUNT(item_id) AS item_count
    FROM Order_Items                            -- Look in the Order_Items table
    GROUP BY order_id                           -- Group the results by order ID
)

SELECT AVG(item_count) AS average_items                         -- Calculate the average number of items
FROM OrderAverage                                               -- From above table
WHERE item_count > (SELECT AVG(item_count) FROM OrderAverage);  -- Only item counts from above average order count

-- 5. Find the products that have been sold the most, excluding products in the "Clearance" category. List the product names and the total quantity sold for each product.
WITH ProductSales AS (
    SELECT p.product_name, SUM(oi.quantity) AS total_quantity   -- Combine quantity of all products sold
    FROM Products p                                             -- Check Products, alias Products
    JOIN Order_Items oi ON p.product_id = oi.product_id         -- Connect p and oi by IDs, alias oi
    JOIN Categories c ON p.category_id = c.category_id          -- Connect p and c by IDs, alias c
    WHERE c.category_name <> 'Clearance'                        -- Ignore Clearance
    GROUP BY p.product_name                                     -- Group the results by product name
)

SELECT product_name, total_quantity                                     -- Fetch the product names and their quantities sold
FROM ProductSales                                                       -- From above table
WHERE total_quantity = (SELECT MAX(total_quantity) FROM ProductSales);  -- Take max seller in quantity
