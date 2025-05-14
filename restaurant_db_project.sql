USE restaurant_db;

SELECT * FROM menu_items;
SELECT * FROM order_details;

# 1.Combine both tables
SELECT * 
FROM order_details od
LEFT JOIN menu_items mi 
ON od.item_id = mi.menu_item_id;

# 2. What were the least and most ordered items? What categories were they in?
SELECT item_name,category,COUNT(order_details_id) AS num_of_purchases
FROM order_details od
LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY item_name,category
ORDER BY num_of_purchases LIMIT 1;

SELECT item_name,category,COUNT(order_details_id) AS num_of_purchases
FROM order_details od
LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY item_name,category
ORDER BY num_of_purchases DESC LIMIT 1;

#3. What were the top orders that spent the most money?
SELECT order_id,SUM(price) AS Top_Sales
FROM order_details od
LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY Top_Sales DESC LIMIT 5;

#4. View the details of the highest spend order. Whta insights can gather?
SELECT category, COUNT(item_id)
FROM order_details od
LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

#5. View the details of the top 5 highest spend orders.?

SELECT order_id,category,COUNT(item_id) AS num_items
FROM order_details od
LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id,category;