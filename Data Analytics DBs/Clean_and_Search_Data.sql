/*Instructions:
 * Follow the stoeps below to complete thie challenge.
 * 1. Write a query that divides TotalCommision by Yearworked.
 * 	Cast the result as NUMERIC value, and round it to 2 decimal places.
 * 2. Use CONCAT to create a new field created from LastName, FirstName.
 * 	Insert a comma after the LastName and a space before FirstName.
 * 3. Use RTRIM to remove any spaces from the right side of LastName.
 * 4. Convert the StillEmployed Field to lower case letters.
*/

SELECT ROUND(cast(totalcommission as float)/cast(yearsworked as float),2) as New_Commission
FROM employee_database;

--SELECT (' ' || ed.FirstName || " "|| ed.LastName ||",") as Full_Name
--FROM employee_database ed;

SELECT (ed.LastName ||", "|| ed.FirstName ) as Full_Name
FROM employee_database ed;

SELECT (RTRIM(LastName) || ', ' || ed.FirstName ) as Full_Name
FROM employee_database ed;

SELECT LOWER(StillEmployed) as Lowercase
FROM employee_database;