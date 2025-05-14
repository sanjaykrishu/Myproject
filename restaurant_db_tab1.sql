USE restaurant_db;

# 1.select menu_items
SELECT * 
FROM menu_items;

# 2. Count number of items in menu
SELECT COUNT(menu_item_id)
FROM menu_items;

# 3.Find the highest price dish and lowest
SELECT *
FROM menu_items
ORDER BY price LIMIT 1;

SELECT * 
FROM menu_items
ORDER BY price DESC LIMIT 1;

# 4.How many Italian Dishes are on the menu?
SELECT COUNT(category)
FROM menu_items
WHERE category = 'italian';

# 5. What are the least and most expensive italian dishes on the menu?
SELECT * FROM menu_items
WHERE category = 'italian'
ORDER BY price LIMIT 1;

SELECT * FROM menu_items
WHERE category = 'italian'
ORDER BY price DESC LIMIT 1;

# 6. How many dishes are in each category?
SELECT category,COUNT(category)
FROM menu_items
GROUP BY category;

# 7. What is the average dish price within each category?
SELECT category,AVG(price)
FROM menu_items
GROUP BY category;


