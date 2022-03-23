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

