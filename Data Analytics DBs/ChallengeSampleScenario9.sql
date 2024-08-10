--Challenge Sample Scenario 9
/*You have a database with products in multiple categories.  The product table contains the following columns: 

product_id

product_name

product_category

unit_price

Write a CTE that calculates the average price per category, 
and returns a table with the category, number of products in the category, and average price for that category.
*/

WITH averagePricePerCategory as (
SELECT product_category, COUNT(product_id)as productCount, AVG(unit_price) as avgPrice
FROM product
GROUP BY product_category);

SELECT product_category, productCount, AVG(unit_price)
FROM averagePricePerCategory;
--Right JOIN product in product.product_category = 

/*Part 2 
 *Use the CTE in a query that determines the category with the maximum average price,
 *and also the category name and the count of products in that category. */

SELECT product_category, avgPrice
FROM averagePricePerCategory
WHERE avgPrice=(SELECT MAX(avgPrice) FROM averagePricePerCategory);