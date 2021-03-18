/* Simple command execution */

/*
 The below commands will show all databases and proceed
 with switching to classicmodels set.
*/

show databases;
use classicmodels;

/* View tables */
show tables;

/* View column info */
DESCRIBE customers;
DESCRIBE products;


/* SELECT CLAUSE */

select firstname, lastname, jobtitle
from employees;

select *
from employees;


/* ORDER BY ASC AND DESC */

Select contactLastName, contactFirstName
From customers
ORDER BY contactLastName;

Select contactLastName, contactFirstName 
From customers 
ORDER BY contactLastName DESC;

/* WHERE CLAUSE */
select contactLastName, contactFirstName
from customers
where country = "USA";

SELECT firstName, lastName
FROM employees
WHERE officeCode IN (1, 2, 3)
ORDER BY officeCode;


SELECT productCode, productName, buyPrice 
FROM products
WHERE buyPrice > 100;


/* Using like operator */
SELECT employeeNumber, lastName, firstName
FROM employees
WHERE LastName LIKE "ge%";
