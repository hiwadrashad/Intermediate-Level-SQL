/* Fetch Single Query Item */

SELECT first_name FROM contacts

/* Fetch Multi Query Item */

SELECT first_name,last_name FROM contacts

/* Insert Multi Query Item */

INSERT INTO contacts (first_name, last_name) VALUES ('Fritz','Onion');

/* Update Existing Data */

UPDATE contacts SET last_name = 'Ahern' WHERE id = 1;

/* Remove Element From Table */

DELETE FROM contacts WHERE id = 2;

/* AND Command  also applicable to OR Clause*/

SELECT p.person_last_name
FROM  
person p
WHERE  
p.person_first_name = 'Jon'
AND  
p.person_contacted_number > 5; 

/* BETWEEN Command */

SELECT p.person_last_name
FROM
person p 
WHERE p.person_contacted_number
BETWEEN 1 AND 20;

/* LIKE  Command Searches For Strings */
/*  % means just like * a wildcard, here it will find any word with the letter o inside it */
SELECT p.person_last_name
FROM
person p
WHERE p.oerson_first_name
LIKE '%o%';

/* IN Clause works like = but with the possibiliyt for multiple inputs */

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name
IN ('Jon','Fritz');

/*IS Clause works the same as = but it gives the possibility to search for NULL values*/

/*ORDER BY orders the results by given column*/
SELECT p.person_first_name, p.person_last_name
FROM person
ORDER BY p.person_last_name;

/* SET Functions allow you to get order and count data */

/*COUNT gives you the number of rows found with the given value*/

/*MAX gives you the maximum value in the given row MIN does the opossite*/

/*AVG gives you the average value of the given row, SUM gives you the sum*/

SELECT COUNT(p.person_first_name)
FROM person p;

/* Parenthesese can be used as a requirement for different command's 
and it can be used to apply a flow where the command applied 
to the statement will be executed first */

/* GROUP BY used with the select query, if applied it will create sets grouped by the given parameter, 
if not the count will be applied to the cumulative number of the given parameter applied to the first column name
*/

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

/* HAVING is like where =*/

SELECT 
COUNT(p.person_first_name),
p.person_first_name
GROUP BY p.person_first_name
HAVING COUNT(p.person_first_name) > 0;

/*CROSS join uses no keyword and no WHERE clause, creates cartesian product of selected tables and row (all possible combinations)*/

USE contacts;

SELECT 
p.person_first_name,
p.person_last_name,
e.email_address
FROM
person p,
email_adress e

/*INNER JOIN joins two tables, doesn't deal with null values, where ON will join where the given requirements are met, this clause is optional */

USE contacts;

SELECT 
p.person_first_name,
p.person_last_name,
e.email_address
FROM
person p
INNER JOIN
email_adress e
ON
p.person_id = e.email_address_person_id;

/*FULL OUTER JOIN combines the two tables given*/

/*LEFT OUTER JOIN gives all of the values fromt he left table and all of the matching values from the right and left table*/


