SELECT *
FROM employees
ORDER BY lastName DESC;


SELECT 
    orderNumber, 
    orderlinenumber, 
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY 
   quantityOrdered * priceEach DESC;


SELECT 
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach AS subtotal 
FROM
    orderdetails
ORDER BY subtotal DESC;

SELECT * 
FROM orders
WHERE status = "Cancelled";


SELECT * 
FROM payments
WHERE amount > 70000;


SELECT 
	firstName,
	lastName,
	email
FROM
	employees
WHERE 
	officeCode = 6 AND jobtitle = 'Sales Rep';


SELECT 
	firstName,
	lastName,
	email
FROM 
	employees
WHERE 
	officecode IN (3, 4, 5) AND jobTitle = "Sales Rep"
ORDER BY 
	officecode;



SELECT
	firstName, lastName, email
FROM
	employees
WHERE
	firstName LIKE 'les%';



SELECT 
    lastname, firstname, jobtitle, email
FROM
    employees
WHERE
    jobtitle <> 'Sales Rep';



SELECT 
    DISTINCT lastname
FROM
    employees
ORDER BY 
    lastname;



SELECT 
    state
FROM
    customers
GROUP BY 
	state;



SELECT    
	customername, 
	country, 
	state, 
	creditlimit
FROM    
	customers
WHERE country = 'USA'
	AND state = 'CA'
	AND creditlimit > 100000;



SELECT    
	customername, 
	country
FROM    
	customers
WHERE country = 'USA' OR 
      country = 'France';



SELECT 
    customername, country
FROM
    customers
WHERE
    country = 'Singapore' OR country = 'Denmark';



SELECT
	officecode, city, country
FROM
	offices
WHERE
	country IN ('France', 'Japan')

SELECT
	officeCode, city, phone
FROM
	offices
WHERE
	country NOT IN ('USA');
